#!/bin/bash
#SBATCH --job-name=blast-all-vs-all
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --time=2-23:00:00
#SBATCH --partition=himem
#SBATCH --mem=240GB
cd /home/p272779/scripts
module load BLAST/2.2.30-goolfc-2.7.11-Python-2.7.3
blastp -db all_proteins.fasta -query all_proteins.fasta -outfmt 6 -out all-vs-all.tsv -num_threads 12 -evalue 1e-5 -num_alignments 1

