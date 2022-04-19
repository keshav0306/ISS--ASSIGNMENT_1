read temp
echo $temp | sed 's/,/ /g' | awk '{for(i=1;i<=NF;i++) array[i]=$i;
l=NF;
# for (i=1;i<=l;i++)
# print array[i];
for (i=l;i>=1;i--){
for (j=1;j<i;j++){
if (array[j]>array[j+1]) {
temp=array[j];
array[j]=array[j+1];
array[j+1]=temp;
}
}
}
for (i=1;i<=l;i++)
print array[i];}'


# l=${#array[@]}
# echo $l
# for ((i=l-1;i>=0;i--))
# do
# for ((j=0;j<i;j++))
# do
# if ((${array[j]}>${array[j+1]}))
# then 
# let temp=${array[j]}
# array[j]=${array[j+1]}
# array[j+1]=$temp
# fi
# done
# done

# for ((i=0;i<l;i++))
# do
# echo ${array[$i]}
# done


 