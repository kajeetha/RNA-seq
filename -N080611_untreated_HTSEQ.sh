#!/bin/sh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=HTSEQ4

module load anaconda3/5.2.0 htseq/0.11.1

htseq-count --format bam --order name --mode intersection-strict --stranded reverse --minaqual 1 --type exon --idattr gene_id /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/HISAT/N080611_untreated.bam /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/Homo_sapiens.GRCh38.86.gtf > N080611_untreated.tsv

exit


