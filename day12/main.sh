awk '{print $1}' file.txt
awk '{print $1, $3}' file.txt
awk -F: '{print $1}' /etc/passwd
awk -F',' '{print $2}' file.csv
awk '$3 > 100' data.txt
awk '$1 == "root"' /etc/passwd
awk '/error/ {print}' log.txt
awk '!/error/ {print}' log.txt
awk '{sum += $2} END {print sum}' file.txt
awk '{count++} END {print count}' file.txt
awk 'NR==5' file.txt
awk 'NR>=5 && NR<=10' file.txt
awk '{print NR, $0}' file.txt
awk '{gsub("foo","bar"); print}' file.txt
awk 'BEGIN {print "Header"} {print} END {print "Footer"}' file.txt
awk -v x=10 '$2 > x' file.txt