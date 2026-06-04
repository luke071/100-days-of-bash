# Awk combinations
| Command | Description |
|---------|-------------|
| awk '{print $1}' file.txt | Print column 1 |
| awk '{print $1, $3}' file.txt | Print columns 1 and 3 |
| awk -F: '{print $1}' /etc/passwd | Use colon as delimiter |
| awk -F',' '{print $2}' file.csv | Print 2nd CSV column |
| awk '$3 > 100' data.txt | Filter rows where column 3 > 100 |
| awk '$1 == "root"' /etc/passwd | Match exact value |
| awk '/error/ {print}' log.txt | Print lines containing "error" |
| awk '!/error/ {print}' log.txt | Print lines NOT containing "error" |
| awk '{sum += $2} END {print sum}' file.txt | Sum column 2 |
| awk '{count++} END {print count}' file.txt | Count lines |
| awk 'NR==5' file.txt | Print only line 5 |
| awk 'NR>=5 && NR<=10' file.txt | Print lines 5–10 |
| awk '{print NR, $0}' file.txt | Print line numbers |
| awk '{gsub("foo","bar"); print}' file.txt | Replace text in column context |
| awk 'BEGIN {print "Header"} {print} END {print "Footer"}' file.txt | Add header/footer |
| awk -v x=10 '$2 > x' file.txt | Use variable inside awk |