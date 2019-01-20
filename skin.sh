#!/bin/bash
#Ueage: sh skin.sh /Project/Data_20190118 20190118
for i in 015-081-006 016-043-020
do
cat $1/$i/result/Abundance.txt >> Abundance_skin_v6_$2.txt
cat $1/$i/result/Diversity.txt >> Diversity_skin_v6_$2.txt
cat $1/$i/result/AgeDifference.txt >> geDifference_skin_v6_$2.txt
done