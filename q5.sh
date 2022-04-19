read name
awk '{ORS="";split($0, array,"");for(i=length(array);i>=1;i--) print array[i]}' <<< $name
echo " " 

awk '{ORS="";split($0, array,"");for(i=length(array);i>=1;i--) print array[i]}' <<< $name | tr 'a-zA-Z' 'b-zaB-ZA'
echo " "

awk '{ORS="";split($0, array,"");for(i=length(array)/2;i>=1;i--) print array[i];for(i=(length(array)/2) +1;i<=length(array);i++)print array[i]}' <<< $name
echo " "
