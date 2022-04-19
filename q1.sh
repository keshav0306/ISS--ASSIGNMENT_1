awk '{if(!arr[$0]++ && NF!=0)print $0}' < quotes.txt
