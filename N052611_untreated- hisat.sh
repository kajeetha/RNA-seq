#!/bin/sh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=hist2

module load gcc/7.3.0 hisat2

hisat2 -p 8 --rg-id=N052611_untreated --rg SM:N052611_untreated --rg PL:ILLUMINA -x/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/RNA_REF_INDEX/grch38_snp_tran/genome_snp_tran --rna-strandness RF -1 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/assignment/N052611_untreated_r1.fastq.gz -2 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2053/assignment/N052611_untreated_r2.fastq.gz -S ./N052611_untreated.sam

exit
