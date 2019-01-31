#!/bin/bash
#Ueage: sh stools.sh /Project/Data_20190118 stoolsName.list 20190118

results_dir=$1
stoolsID=$2
project_date=$3

for i in `cat $stoolsID|cut -f1`
do
cat $results_dir/$i/result/Abundance.txt >> Abundance_stools_$project_date.txt
cat $results_dir/$i/result/Diversity.txt >> Diversity_stools_$project_date.txt
cat $results_dir/$i/result/Enterotype.txt >> Enterotype_stools_$project_date.txt
cat $results_dir/$i/result/Forecasbmi.txt >> Forecasbmi_stools_$project_date.txt
cat $results_dir/$i/result/GutAge.txt >> GutAge_stools_$project_date.txt
cat $results_dir/$i/result/MDI.txt >> MDI_stools_$project_date.txt
cat $results_dir/$i/result/Metabolizepathway.txt >> Metabolizepathway_stools_$project_date.txt
done
tar zcvf stools.$project_date.tar.gz *_stools*
