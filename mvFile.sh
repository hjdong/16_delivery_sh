for i in 015-081-006 016-043-020 015-117-075
do
mkdir $i
mkdir $i/result
mv *_${i}_* $i
cp $i/*.apidir/*.txt $i/result
cp $i/*maturity* $i/result/Maturity.txt
cp $i/*vitamin* $i/result/Vitamin.txt
cp $i/*.age_* $i/result/GutAge.txt
cp $i/*bmi* $i/result/Forecasbmi.txt
cp $i/*mdi* $i/result/MDI.txt
sed -i "s/Testsampleid/$i/" $i/result/*.txt
sed -i "s/\t/${i}\t/4" $i/result/MDI.txt
sed -i "s/nokiding/$i/" $i/result/*.txt
done
