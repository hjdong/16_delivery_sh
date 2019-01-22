#!/bin/bash
#Usage: sh mvFile.sh /home/Project/Data_20190102/results sampleName.txt

results_dir=$1
kidID=$2
for i in `cat $kidID|cut -f1`
do
mkdir $results_dir/$i
mkdir $results_dir/$i/result
mv $results_dir/*${i}_* $results_dir/$i
cp $results_dir/$i/*.apidir/*.txt $results_dir/$i/result
cp $results_dir/$i/*maturity* $results_dir/$i/result/Maturity.txt
cp $results_dir/$i/*vitamin* $results_dir/$i/result/Vitamin.txt
cp $results_dir/$i/*.age_* $results_dir/$i/result/GutAge.txt
cp $results_dir/$i/*bmi* $results_dir/$i/result/Forecasbmi.txt
cp $results_dir/$i/*mdi* $results_dir/$i/result/MDI.txt
cp $results_dir/$i/*skin* $results_dir/$i/result/AgeDifference.txt
sed -i "s/\t/${i}\t/4" $results_dir/$i/result/AgeDifference.txt
sed -i "s/Testsampleid/$i/" $results_dir/$i/result/*.txt
sed -i "s/\t/${i}\t/4" $results_dir/$i/result/MDI.txt
sed -i "s/nokiding/$i/" $results_dir/$i/result/*.txt
done
