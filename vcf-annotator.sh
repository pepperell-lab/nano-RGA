#!/bin/bash
echo "installing miniconda..."
export HOME=$PWD
export PATH
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

sh Miniconda3-latest-Linux-x86_64.sh -b -p $PWD/miniconda3
export PATH=$PWD/miniconda3/bin:$PATH

conda install -c bioconda vcf-annotator
tar -xf $1_output.tar.gz
gunzip $1_output/variant_calls.snps.vcf.gz
cp $_output/variant_calls.snps.vcf .

vcf-annotator variant_calls.vcf $2 > $1_annotated.vcf
