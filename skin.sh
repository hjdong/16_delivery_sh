#!/bin/bash
#Usage: sh skin.sh /Project/Data_20190118 skinName.list 20190118

results_dir=$1
skinID=$2
project_date=$3
for i in `cat $skinID|cut -f1`
do
cat $results_dir/$i/result/Abundance.txt >> Abundance_skin_v6_$project_date.txt
cat $results_dir/$i/result/Diversity.txt >> Diversity_skin_v6_$project_date.txt
cat $results_dir/$i/result/AgeDifference.txt >> AgeDifference_skin_v6_$project_date.txt
done
tar zcvf skin.$project_date.tar.gz *_skin_*
