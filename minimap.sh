#!/bin/bash

minimap2 -ax map-ont $1 $2.fastq.gz > $2.sam
