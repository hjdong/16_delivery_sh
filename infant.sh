#!/bin/bash
#Ueage: sh infant.sh /Project/Data_20190118 infantName.list 20190118

results_dir=$1
infantID=$2
project_date=$3

for i in `cat $infantID|cut -f1`
do
cat $results_dir/$i/result/Abundance.txt >> Abundance_infant_v6_$project_date.txt
cat $results_dir/$i/result/Diversity.txt >> Diversity_infant_v6_$project_date.txt
cat $results_dir/$i/result/Maturity.txt >> Maturity_infant_v6_$project_date.txt
cat $results_dir/$i/result/Vitamin.txt >> Vitamin_infant_v6_$project_date.txt
cat $results_dir/$i/result/Metabolizepathway.txt >> Metabolizepathway_infant_v6_$project_date.txt
done
tar zcvf infant.$project_date.tar.gz *_infant*
