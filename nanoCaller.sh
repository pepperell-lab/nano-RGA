#!/bin/bash
NanoCaller --mode all --bam $1.sort.bam --ref $2 --output $1_output
tar -czf $1_output.tar.gz $1_output
