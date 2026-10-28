
# FLNC: Protein Structure and Mutation Analysis

## Student and Assignment Information

| Item | Details |
|---|---|
| Course | BIO 300 – Cell and Molecular Biology |
| Student | Klea Mae G. Estrellanes |
| Student number | 202400728 |
| Gene symbol | FLNC |
| Gene name | Filamin C |
| Organism | *Homo sapiens* (human) |
| NCBI Gene ID | 2318 |
| Assigned transcript | NM_001458.5 |
| ClinVar Variation ID | 421215 |
| Nucleotide variant | NM_001458.5:c.1948C>T |
| Protein consequence | NP_001449.3:p.Arg650Ter |
| Reference protein length | 2,725 amino acids |
| ClinVar record checked | October 28, 2026 |

## 1. Project Overview

This project investigates the human FLNC gene and the potential functional consequences of the variant NM_001458.5:c.1948C>T (p.Arg650Ter). The analysis uses public biological databases, an amino-acid sequence retrieved from NCBI, an amino-acid composition analysis, and a visualization of the variant’s position in the protein.

The main purpose is to connect the variant’s molecular consequence to the biological function of filamin C and to discuss how a premature stop codon may affect muscle structure and function.

Research Question

How might the FLNC nonsense variant NM_001458.5:c.1948C>T (p.Arg650Ter), which introduces a premature termination codon at amino-acid position 650, affect filamin C and contribute to muscle-related disease?

## 2. Gene and Protein Background

The FLNC gene encodes filamin C, a cytoskeletal protein expressed predominantly in skeletal and cardiac muscle. Filamin C helps organize the actin cytoskeleton and supports the structural connections that allow muscle cells to withstand mechanical stress during contraction.

Filamin C interacts with other proteins at important structural regions of muscle cells, including the Z-disc and myotendinous junction. These interactions contribute to the organization, stability, and maintenance of muscle fibers.

Because filamin C contributes to muscle-cell structure, damaging variants in FLNC can be associated with different muscle and cardiac phenotypes. The particular outcome depends on factors such as the variant, its molecular effect, the affected protein region, and the biological context.

### Reference Information

| Field | Information |
|---|---|
| Gene symbol | FLNC |
| Gene name | Filamin C |
| NCBI Gene ID | 2318 |
| Reference transcript | NM_001458.5 |
| Reference protein | NP_001449.3 |
| Protein length | 2,725 amino acids |
| Nucleotide change | c.1948C>T |
| Protein change | p.Arg650Ter |
| ClinVar Variation ID | 421215 |

### Database Links

- [NCBI Gene: FLNC](https://www.ncbi.nlm.nih.gov/gene/2318)

- [NCBI Nucleotide: NM_001458.5](https://www.ncbi.nlm.nih.gov/nuccore/NM_001458.5)

- [NCBI Protein: NP_001449.3](https://www.ncbi.nlm.nih.gov/protein/NP_001449.3)

- [NCBI ClinVar: Variation ID 421215](https://www.ncbi.nlm.nih.gov/clinvar/variation/421215/)



## 3. Methods and Reproducible Workflow

The analysis was performed in RStudio/Posit Cloud using the `rentrez` and `ggplot2` packages. The workflow retrieved FLNC reference information from NCBI, analyzed the protein sequence, generated visualizations, and examined the assigned ClinVar variant.

### 3.1 Software and Packages

The analysis used R or RStudio/Posit Cloud and the following R packages:

- `rentrez` — to retrieve records from NCBI databases.
- `ggplot2` — to create data visualizations.

Install the packages using:

```r
install.packages(c("rentrez", "ggplot2"))
```

Load the packages using:

```r
library(rentrez)
library(ggplot2)
```

### 3.2 Analysis Procedures

1. **Set the assigned identifiers.** The analysis used the gene symbol `FLNC`, NCBI Gene ID `2318`, transcript accession `NM_001458.5`, ClinVar Variation ID `421215`, and protein consequence `p.Arg650Ter`.

2. **Retrieve gene information.** The NCBI Gene record for human FLNC was retrieved, and the gene summary was saved as `gene_summary.txt`.

3. **Retrieve the reference protein.** The transcript record for `NM_001458.5` was examined to identify its linked RefSeq protein accession. The protein sequence was retrieved in FASTA format and saved as `FLNC_protein.fasta`.

4. **Record accession information.** The protein accession and related information were saved in `protein_accession.txt`.

5. **Calculate amino-acid composition.** The reference protein sequence was analyzed to count the occurrences of the 20 standard amino acids. The frequency results were saved as `amino_acid_composition.csv`.

6. **Generate the composition chart.** A bar chart showing amino-acid frequencies was generated and saved as `01_amino_acid_composition.png`.

7. **Visualize the variant position.** The assigned variant at amino-acid position 650 was marked on a linear representation of the reference FLNC protein. The figure was saved as `02_variant_position.jpg`.

8. **Review the clinical variant record.** ClinVar Variation ID `421215` was examined for its reported classification, review status, associated conditions, and relevant database dates.

### 3.3 Reproducing the Analysis

To reproduce the analysis:

1. Install R and RStudio, or use a compatible Posit Cloud environment.
2. Download or clone the repository.
3. Open the repository directory in RStudio.
4. Install the required packages using the commands in Section 3.1.
5. Ensure that `analysis.R` and its input files are in the locations expected by the script.
6. Run `analysis.R` from beginning to end.
7. Confirm that the expected output files are generated.

Run the script from a terminal in the repository directory using:

```bash
Rscript analysis.R
```

Alternatively, open `analysis.R` in RStudio and run the script.

### 3.4 Expected Files

The analysis files are stored in the repository's root directory.

| File | Purpose |
|---|---|
| `analysis.R` | R analysis script |
| `FLNC_protein.fasta` | Retrieved reference protein sequence |
| `gene_summary.txt` | NCBI gene information |
| `protein_accession.txt` | Protein accession information |
| `amino_acid_composition.csv` | Amino-acid frequency results |
| `01_amino_acid_composition.png` | Amino-acid composition chart |
| `02_variant_position.jpg` | Variant-position visualization |

### 3.5 Reproducibility Considerations

The workflow retrieves records from NCBI at runtime. Retrieved records may change as databases are updated, and network availability or NCBI rate limits may affect retrieval.

The reference transcript and assigned variant must remain `NM_001458.5:c.1948C>T` (p.Arg650Ter) unless the instructor approves a change. The reported results correspond to the reference sequence and analysis outputs used in this project.

## 4. NCBI Gene and Protein Results

| Item | Result |
|---|---|
| Gene symbol | FLNC |
| NCBI Gene ID | 2318 |
| Transcript accession | NM_001458.5 |
| Protein accession retrieved by R | NP_001449.3 |
| Protein length counted from FASTA | 2,725 amino acids |
| FASTA file | [FLNC_protein.fasta](./FLNC_protein.fasta) |
| Gene summary | [gene_summary.txt](./gene_summary.txt) |
| Protein accession record | [protein_accession.txt](./protein_accession.txt) |
| Amino-acid composition CSV | [amino_acid_composition.csv](./amino_acid_composition.csv) |
| Amino-acid composition figure | [01_amino_acid_composition.png](./01_amino_acid_composition.png) |
| Variant position figure | [02_variant_position.jpg](./02_variant_position.jpg) |
| R analysis script | [analysis.R](./analysis.R) |

The protein accession was extracted from the GenBank record associated with the assigned transcript. The protein length was calculated by counting the amino-acid residues in the retrieved FASTA sequence.

These results identify the reference sequence used for the analysis. They do not establish the length or abundance of a protein produced from the variant allele.

## 5. Amino-Acid Composition

The R script counted the occurrences of the 20 standard amino acids in the retrieved 2,725-residue FLNC reference protein.

The three most abundant amino acids were:

| Rank | Amino acid | One-letter code | Count |
|---:|---|:---:|---:|
| 1 | Glycine | G | 302 |
| 2 | Valine | V | 273 |
| 3 | Proline | P | 223 |

### Figure 1. Amino-Acid Composition of the FLNC Reference Protein

![Amino-acid composition of the FLNC reference protein](01_amino_acid_composition.png).

**Interpretation:** Glycine, valine, and proline were the three most frequent residues in the analyzed reference sequence. These counts describe the primary-sequence composition. They cannot independently establish the protein's three-dimensional structure, specific molecular interactions, pathogenicity, or the functional effect of p.Arg650Ter.

## 6. Assigned ClinVar Variant

The assigned variant is **NM_001458.5:c.1948C>T**, corresponding to **NP_001449.3:p.Arg650Ter**.

This is a **nonsense variant** because the nucleotide substitution changes the codon for arginine at amino-acid position 650 into a premature termination codon.

### Reported ClinVar Findings

The ClinVar record checked on October 28, 2026, was reported to display an aggregate germline classification of **Pathogenic**, with four submissions contributing to that classification. The record was reported to show a last-evaluated date of September 8, 2025.

The associated condition records include muscle and cardiovascular phenotypes. The specific condition-level interpretations should be examined separately from the aggregate variant-level classification.

### Variant Links

- [ClinVar Variation ID 421215](https://www.ncbi.nlm.nih.gov/clinvar/variation/421215/)
- [Assigned transcript: NM_001458.5](https://www.ncbi.nlm.nih.gov/nuccore/NM_001458.5)
- [Reference protein: NP_001449.3](https://www.ncbi.nlm.nih.gov/protein/NP_001449.3)

**Evidence limitation:** ClinVar is a clinical variant-interpretation database. Its classification summarizes submitted evidence; it is not, by itself, direct experimental proof of the molecular effect in a particular cell type. The number of submissions contributing to a classification is not the same as the review-status star level.

## 7. Protein-Position Figure

### Figure 2. Position of p.Arg650Ter in the FLNC Reference Protein

![Position of p.Arg650Ter in the FLNC reference protein](02_variant_position.jpg)

The figure represents the 2,725-amino-acid reference protein as a linear sequence and marks the assigned variant at position 650.

The marker identifies the position associated with the protein consequence in the reference sequence. It does not show the experimentally determined length of an altered protein or prove that a shortened protein is produced.

## 8. Molecular Mechanism, Interpretation, and Limitations

### 8.1 Normal Protein Function

The *FLNC* gene encodes filamin C, an actin-binding cytoskeletal protein found mainly in skeletal and cardiac muscle. Filamin C cross-links actin filaments and interacts with structural proteins at the Z-disc and myotendinous junction. These functions help maintain muscle-fiber organization, sarcomere stability, and resistance to mechanical stress during contraction.

Filamin C primarily supports muscle structure. It does not directly drive the actin–myosin cycle or regulate calcium release. Instead, it helps maintain the structural organization needed for normal muscle function.

### 8.2 Evidence for the Assigned Variant

The assigned variant is NM_001458.5:c.1948C>T, corresponding to NP_001449.3:p.Arg650Ter. The nucleotide substitution introduces a premature termination codon at amino-acid position 650.

**Clinical database evidence:** ClinVar Variation ID 421215 reports an aggregate germline classification of Pathogenic. The record's classification reflects submitted clinical evidence and should be distinguished from experiments performed in this project.

**Predicted molecular consequence:** The premature termination codon may trigger nonsense-mediated mRNA decay (NMD), reducing the amount of FLNC transcript available for translation. If the transcript escapes NMD, it may produce a shortened filamin C protein lacking downstream regions.

**Experimental evidence from this project:** The analysis identifies the reference protein, counts its amino acids, and marks the assigned variant's position. It does not directly measure FLNC RNA abundance, protein abundance, protein size, or muscle-cell function. Therefore, this project does not experimentally establish whether NMD occurs or whether a shortened protein is produced.

Source: [NCBI ClinVar, Variation ID 421215](https://www.ncbi.nlm.nih.gov/clinvar/variation/421215/).

### 8.3 Causal Chain

**Gene:** FLNC  
→ **Protein:** Filamin C  
→ **Normal molecular function:** Filamin C cross-links actin filaments and helps maintain the structural organization of muscle cells.  
→ **Assigned variant:** NM_001458.5:c.1948C>T (p.Arg650Ter), a nonsense variant that introduces a premature stop codon at amino acid 650.  
→ **Predicted molecular effect:** The premature stop codon may cause nonsense-mediated mRNA decay or production of a truncated filamin C protein.  
→ **Possible functional consequence:** Reduced availability or disruption of functional filamin C may interfere with normal muscle-cell structural organization.  
→ **Possible biological outcome:** Impaired muscle structure and function; the specific clinical effect depends on the biological context.

This causal chain is supported by the variant's predicted protein consequence and its pathogenic classification in ClinVar. However, the present sequence and protein analysis does not directly demonstrate mRNA decay, production of a truncated protein, loss of filamin C function, or a clinical phenotype. These effects require experimental or additional clinical evidence.

### 8.4 Proposed Validation Experiment

A suitable experiment would compare FLNC transcript and protein expression in an appropriate cellular model carrying the variant with a matched reference control.

1. **RT-qPCR:** Measure FLNC transcript abundance in reference and variant samples.
2. **Western blotting:** Compare filamin C abundance and apparent molecular size using an appropriate validated antibody.
3. **NMD investigation:** If appropriate, compare variant-transcript abundance before and after inhibition of nonsense-mediated mRNA decay.
4. **Microscopy:** Use immunofluorescence to examine filamin C localization and muscle-cell structural organization if a suitable model is available.

Appropriate controls and biological replicates are necessary. Reduced transcript abundance would support, but not alone prove, transcript degradation. Detection of a smaller protein band would support production of a shortened protein. These experiments would help distinguish the proposed mechanisms from experimentally observed effects.
## 9. Discussion

The FLNC gene encodes filamin C, an actin-binding cytoskeletal protein that contributes to muscle-cell organization and structural integrity. The assigned variant is NM_001458.5:c.1948C>T, corresponding to p.Arg650Ter in RefSeq protein NP_001449.3. This is a nonsense variant because the nucleotide substitution introduces a premature termination codon at amino-acid position 650. The R workflow retrieved the transcript-linked reference protein and counted 2,725 amino-acid residues.

The amino-acid composition analysis identified glycine as the most frequent residue (302), followed by valine (273) and proline (223). These results describe the primary sequence. They do not independently establish protein structure, molecular interactions, pathogenicity, or the functional effect of the assigned variant.

The ClinVar record checked on October 28, 2026, was reported to display an aggregate germline classification of Pathogenic, with four submissions contributing to the classification. This represents a clinical database interpretation and should be distinguished from direct experimental evidence of the molecular mechanism. The current classification, review status, condition records, and supporting submissions should be verified before submission.

The premature termination codon may cause nonsense-mediated mRNA decay or allow the production of an abnormal truncated protein. If normal filamin C abundance or function is reduced, muscle-cell structural integrity could be affected. However, neither the amino-acid composition chart nor the linear position plot establishes which molecular outcome occurs. This project did not directly measure RNA abundance, protein abundance, protein localization, or muscle function.

Follow-up experiments could quantify FLNC RNA, assess filamin C abundance and apparent size by Western blotting, and examine protein localization using immunofluorescence microscopy. A suitable muscle-cell model could also be used to test structural or contractile consequences. Appropriate controls and biological replicates would be essential. Overall, the analysis combines reference-sequence analysis with clinical variant annotation to formulate a mechanistic hypothesis. Experimental validation is still required to determine the variant's molecular consequences in a defined biological context.


## 10. Answers to the Required Questions

### 1. What does FLNC encode, and how does the protein contribute to muscle function?

FLNC encodes filamin C, an actin-binding cytoskeletal protein that helps maintain muscle-cell structural integrity. It connects components of the actin cytoskeleton with other structural and signaling proteins, supporting muscle organization during contraction and relaxation.

### 2. What was the exact protein accession and length retrieved with R?

The retrieved RefSeq protein accession was NP_001449.3, associated with transcript NM_001458.5. The R script counted 2,725 amino acids in the retrieved reference protein sequence.

### 3. What did the amino-acid composition chart show, and what can it not tell you?

The three most abundant amino acids were glycine (302 residues), valine (273 residues), and proline (223 residues). The chart describes amino-acid frequency but cannot independently establish protein structure, molecular interactions, pathogenicity, or the functional effect of the variant.

### 4. What is the assigned ClinVar variant, and what is its classification and evidence strength?

The assigned variant is NM_001458.5:c.1948C>T (p.Arg650Ter), ClinVar Variation ID 421215. The record was reported as Pathogenic, with multiple submitters contributing to the aggregate classification. The current classification, review status, and supporting evidence should be verified directly on ClinVar before submission. A clinical classification is not equivalent to direct experimental confirmation of the molecular mechanism.

### 5. What is the scientifically supported mechanism linking the variant to muscle function, and what remains uncertain?

The variant introduces a premature termination codon at residue 650. This may cause nonsense-mediated mRNA decay or allow production of an abnormal truncated protein. Reduced filamin C abundance or function could compromise muscle-cell structural integrity. However, this project did not experimentally determine whether the transcript is degraded, whether a truncated protein is produced, or what cellular effects occur.

### 6. What additional experiment would help test the proposed mechanism?

RNA analysis could measure FLNC transcript abundance and investigate possible nonsense-mediated mRNA decay. Western blotting could assess filamin C abundance and apparent molecular size, while immunofluorescence microscopy could examine its cellular localization. Appropriate controls and biological replicates would be required.
## 11. Limitations

1. **Sequence\-based analysis:** The analysis examines sequence information and amino\-acid frequencies, not protein function in living cells\.
2. **Protein expression:** The project does not establish whether a shortened filamin C protein is produced\.
3. **Nonsense\-mediated decay:** NMD is a possible mechanism, but transcript degradation was not directly measured\.
4. **Clinical interpretation:** ClinVar provides a clinical classification based on submitted evidence; this project does not independently validate that classification\.
5. **Experimental validation:** No functional assay was performed to directly measure the variant’s effect on muscle\-cell structure or function\.
6. **Reproducibility:** Results depend on the exact input sequence, R code, package versions, and output files\. These should be checked when reproducing the analysis\.

## 12. References and Database Links

1. National Center for Biotechnology Information (NCBI). **FLNC, Gene ID 2318.**  
   https://www.ncbi.nlm.nih.gov/gene/2318

2. NCBI Nucleotide / RefSeq. **FLNC transcript NM_001458.5.**  
   https://www.ncbi.nlm.nih.gov/nuccore/NM_001458.5

3. NCBI Protein / RefSeq. **Filamin C, NP_001449.3.**  
   https://www.ncbi.nlm.nih.gov/protein/NP_001449.3

4. NCBI ClinVar. **FLNC variant, Variation ID 421215.**  
   https://www.ncbi.nlm.nih.gov/clinvar/variation/421215/

5. Ortiz-Genga, M. F., et al. (2016). *Truncating FLNC Mutations Are Associated With High-Risk Dilated and Arrhythmogenic Cardiomyopathies.* Journal of the American College of Cardiology.  
   https://pubmed.ncbi.nlm.nih.gov/27908349/

6. rentrez documentation. **Accessing NCBI databases from R.**  
   https://docs.ropensci.org/rentrez/

7. ggplot2 documentation. **Data visualization in R.**  
   https://ggplot2.tidyverse.org/

   Database access date for this revision: October 28, 2026.

