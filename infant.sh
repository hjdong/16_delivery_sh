#!/bin/bash
#Ueage: sh infant.sh /Project/Data_20190118 20190118
for i in 015-081-006 016-043-020
do
cat $1/$i/result/Abundance.txt >> Abundance_infant_v6_$2.txt
cat $1/$i/result/Diversity.txt >> Diversity_infant_v6_$2.txt
cat $1/$i/result/Maturity.txt >> Maturity_infant_v6_$2.txt
cat $1/$i/result/Vitamin.txt >> Vitamin_infant_v6_$2.txt
cat $1/$i/result/Metabolizepathway.txt >> Metabolizepathway_infant_v6_$2.txt
done
tar zcvf infant.$2.tar.gz *.txt
