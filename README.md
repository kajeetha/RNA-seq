# RNA-seq
Primary airway smooth muscle cells that were DEX-treated and untreated controls were used for total RNA extraction data was obtained from Himes, B. E. et al(2014).  

# Mapping
Raw reads were processed using Casava 1.8. and FASTQC (v.0.10.0) was done to obtain QC metrics of the raw reads. The human genome was obtained in FASTA format (GRCh38) from Ensembl (version 92) and gene set annotation in gtf format. The first 12 bases of all reads were trimmed with FASTX Toolkit (v.0.0.13). The hisat2 indices (obtained from the registry of open data on AWS) were built from the genome index using hisat2-build21 (from Hisat2 version 2.1.0). The paired end reads were aligned to the human reference genome using Hisat2 and subsequently sorted by position of reads using Samtools (version 1.3). 

# Detecting DEGs with Normalization: 

 HTSeq (version 2.1.0) was used to count reads mapping to individual genes by processing the sorted bam files with accepted read alignment quality. TMM Normalization, dispersion and differential expression analysis were performed with the edgeR package (Version 3.38.4) in R5. Normalization factors were adjusted, and edgeR used the exact test with a negative binomial distribution and selected with a tag-wise dispersion for each gene to perform differential gene expression (DEG) analysis for the normalization method5. The p-value was adjusted for multiple test correction using the Benjamini-Hochberg FDR methodology (p.value <0.05). 


<img width="897" alt="Screen Shot 2023-09-24 at 9 34 37 AM" src="https://github.com/kajeetha/RNA-seq/assets/110184512/3b61ff30-4106-4061-bba9-4940a8564223">


Miso was used to identify differentially expressed isoforms. For miso manual and documentation please refer to [yarden](https://github.com/yarden/MISO)

