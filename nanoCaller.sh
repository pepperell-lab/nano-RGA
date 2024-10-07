#!/bin/bash
samtools index --bam $1.sort.bam
NanoCaller --bam $1.sort.bam --ref $2 --output $1_output
