#!/bin/sh

for f in /gpfs/rocket/dmytro/dream_encode/DNase/*.bam; do
    echo $f
    outfile=$f.bai
    if [ ! -f $outfile ]; then
	samtools index $f
    fi
done
