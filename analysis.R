library(rentrez)
library(ggplot2)

gene_symbol <- "FLNC"
transcript_accession <- "NM_001458.5"
clinvar_id <- "421215"
variant_protein <- "p.Arg650Ter"

for (x in c("data", "results", "figures")) {
  dir.create(x, showWarnings = FALSE)
}

hits <- entrez_search(
  db = "gene",
  term = paste0(gene_symbol, "[Gene Name] AND txid9606[Organism]"),
  retmax = 20
)

if (length(hits$ids) == 0) stop("Gene not found")

gene_id <- NA_character_

for (id in hits$ids) {
  rec <- entrez_summary(db = "gene", id = id)
  
  if (toupper(rec$name) == toupper(gene_symbol)) {
    gene_id <- id
    gene_info <- rec
    break
  }
}

if (is.na(gene_id)) stop("Exact human gene not found")

print(gene_info)

writeLines(c(
  paste("Gene symbol:", gene_info$name),
  paste("NCBI Gene ID:", gene_id),
  paste("Official name:", gene_info$description),
  paste("Chromosome:", gene_info$chromosome)
), "results/gene_summary.txt")

gb <- entrez_fetch(
  db = "nuccore",
  id = transcript_accession,
  rettype = "gb",
  retmode = "text"
)

pat <- '/protein_id="NP_[0-9]+[.][0-9]+"'
fragment <- regmatches(gb, regexpr(pat, gb))

if (length(fragment) == 0) {
  stop("NP protein ID not found; inspect the transcript record")
}

protein_accession <- gsub('^/protein_id="|"$', '', fragment)

protein_fasta <- entrez_fetch(
  db = "protein",
  id = protein_accession,
  rettype = "fasta",
  retmode = "text"
)

if (!startsWith(protein_fasta, ">")) {
  stop("Invalid FASTA")
}

fasta_file <- file.path(
  "data",
  paste0(gene_symbol, "_protein.fasta")
)

writeLines(protein_fasta, fasta_file)

cat("Matched protein:", protein_accession, "\n")

writeLines(
  paste("NP accession:", protein_accession),
  "results/protein_accession.txt"
)

fasta_lines <- readLines(fasta_file)

sequence <- paste(
  fasta_lines[!grepl("^>", fasta_lines)],
  collapse = ""
)

aa <- strsplit(toupper(sequence), "")[[1]]
protein_length <- length(aa)

standard <- strsplit("ACDEFGHIKLMNPQRSTVWY", "")[[1]]
counts <- table(factor(aa, levels = standard))

results <- data.frame(
  AminoAcid = standard,
  Count = as.integer(counts)
)

write.csv(
  results,
  "results/amino_acid_composition.csv",
  row.names = FALSE
)

cat("Protein length:", protein_length, "amino acids\n")
print(head(results[order(-results$Count), ], 3))

fig1 <- ggplot(results, aes(AminoAcid, Count)) +
  geom_col(fill = "grey45") +
  theme_bw() +
  labs(
    title = paste(gene_symbol, "amino-acid composition"),
    x = "Amino acid",
    y = "Number of residues"
  )

print(fig1)

ggsave(
  "figures/01_amino_acid_composition.png",
  fig1,
  width = 8,
  height = 5,
  dpi = 300
)

# Step 5: Assigned ClinVar variant documentation
# Gene: FLNC
# Transcript: NM_001458.5
# Nucleotide change: c.1948C>T
# Protein change: p.Arg650Ter (R650*)
# ClinVar Variation ID: 421215
# Variant type: Nonsense
# Germline classification: Pathogenic
# Review status: 4 submissions contributed
# Last evaluated: 2025-09-08 
# Source: https://www.ncbi.nlm.nih.gov/clinvar/variation/421215/

# Step 6: FLNC protein-position plot

position <- 650

fig2 <- ggplot() +
  geom_segment(
    aes(x = 1, xend = protein_length, y = 0, yend = 0),
    linewidth = 2
  ) +
  geom_point(
    aes(x = position, y = 0),
    size = 4
  ) +
  annotate(
    "text",
    x = position,
    y = 0.25,
    label = "p.Arg650Ter",
    size = 4
  ) +
  xlim(0, protein_length) +
  ylim(-0.6, 0.6) +
  theme_void() +
  labs(
    title = "FLNC Reference Protein: Variant Position",
    x = "Amino-acid position"
  ) +
  theme(axis.title.x = element_text())

print(fig2)

ggsave(
  "figures/02_variant_position.png",
  fig2,
  width = 8,
  height = 2.5,
  dpi = 300
)

# Step 7: Molecular mechanism
#
# FLNC encodes filamin C, a protein that helps maintain
# muscle structure by connecting and stabilizing components
# of the muscle cell's cytoskeleton.
#
# The assigned variant, c.1948C>T (p.Arg650Ter), introduces
# a premature stop codon at amino-acid position 650.
# This may result in an abnormally shortened protein or
# reduced protein production.
#
# Disrupted filamin C function may weaken muscle-cell
# structural integrity. The exact molecular effect of this
# variant should not be considered experimentally proven
# without direct supporting evidence.
#
# Possible validation experiment:
# Compare filamin C protein levels and localization in
# cells carrying the variant versus control cells using
# Western blotting and immunofluorescence microscopy.