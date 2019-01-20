#!/bin/bash
for i in 015-081-006 016-043-020
do
cat $1/$i/result/Abundance.txt >> Abundance_stools_$2.txt
cat $1/$i/result/Diversity.txt >> Diversity_stools_$2.txt
cat $1/$i/result/Enterotype.txt >> Enterotype_stools_$2.txt
cat $1/$i/result/Forecasbmi.txt >> Forecasbmi_stools_$2.txt
cat $1/$i/result/GutAge.txt >> GutAge_stools_$2.txt
cat $1/$i/result/MDI.txt >> MDI_stools_$2.txt
cat $1/$i/result/Metabolizepathway.txt >> Metabolizepathway_stools_$2.txt
done
tar zcvf stools.$2.tar.gz *.txt