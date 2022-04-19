awk -F~ -v x="\"" '{if(NF!=0)print $2 " once said, " x$1x }' quotes.txt > speech.txt
