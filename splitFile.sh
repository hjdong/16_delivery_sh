#!/bin/bash
#从后台系统导出样品信息表，转为文本文件格式。
#用于从下机数据中挑选出需要交付报告的数据，存入delivery_data目录内

#Usage:sh splitFile.sh /home/hjd/mnt/hrk20190118/rawdata hcode2019119.txt

data_dir=$1  # 下机数据所在目录
sample_list=$2 #样本信息表，文本格式

cut -f1,2,25 $sample_list |grep "报告" > sample_delivery.txt

grep "婴幼儿健康管家" sample_delivery.txt > baby_gut.txt
grep "微生态健康管家" sample_delivery.txt > adult_gut.txt
grep "肌本胚壤|微生态皮肤检测" sample_delivery.txt > skin.txt

#统计个数
FN=$(wc -l < sample_delivery.txt)
FB=$(wc -l < baby_gut.txt)
FA=$(wc -l < adult_gut.txt)
FS=$(wc -l < skin.txt)

mkdir delivery_data
for i in `cat sample_delivery.txt|cut -f1`
do
cp $data_dir/*${i}_* delivery_data
done

echo "成人肠道: adult_gut.txt"  $FA
echo "商业皮肤: skin.txt"  $FS
echo "婴幼儿肠道：baby_gut.txt"  $FB
echo "需交付报告样本：sample_delivery.txt"  $FN
