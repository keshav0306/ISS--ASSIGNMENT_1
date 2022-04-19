wc -c $1| awk '{print $1}'
wc -l $1| awk '{print $1}'
wc -w $1| awk '{print $1}'
awk '{print "Line No:",NR, "-", NF}' $1
#awk '{for(i=1;i<=NF;i++)print $i}' $1 | sed "s/[^a-zA-Z']//g" | awk '{if(!arr[$0]++)print $0, arr[$0]}' 
awk '{for(i=1;i<=NF;i++)print $i}' $1 | sed "s/[^a-zA-Z']//g" | awk '{a[$0]++;k[NR]=$0}END{for(i=1;i<=NR;i++)print k[i], a[k[i]]}' | awk '{if(!arr[$0]++) print}' | awk '{print "Word: " ,$1," - Count of repetition: " , $2}'
