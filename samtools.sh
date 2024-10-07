#!/bin/bash
samtools index $1.sam
samtools view -bS $1.sam > $1.bam

samtools sort $1.bam > $1.sort.bam
samtools index $1.sort.bam
samtools faidx $2
