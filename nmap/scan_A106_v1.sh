nmap -sn 172.16.0.0/24 | grep "scan report" | tr -d '()'>temp1.txt
awk '{print $NF}' temp1.txt > temp2.txt

while read VAR
do
   a=$(nmap -F $VAR |grep "/tcp" | grep "open"| wc -l)
   echo "$VAR,$a" >> scan-result_1.csv
done < temp2.txt
