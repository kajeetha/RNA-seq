#!/bin/sh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=HTSEQ1

module load anaconda3/5.2.0 htseq/0.11.1

htseq-count --format bam --order name --mode intersection-strict --stranded reverse --minaqual 1 --type exon --idattr gene_id /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/HISAT/N61311_Dex.bam /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/Homo_sapiens.GRCh38.86.gtf > N61311_Dex.tsv

exit

