```bash
cut -d',' -f1 file.csv
cut -d',' -f1,3 file.csv
cut -d',' -f1-4 file.csv
cut -d':' -f1 /etc/passwd
cut -d':' -f1,3,7 /etc/passwd
cut -c1-5 file.txt
cut -c5- file.txt
cut -c-10 file.txt
cut -f1,3 file.tsv
cut --complement -d',' -f2 file.csv
cut -d' ' -f2-4 file.txt
cut -d';' -f1 file.txt
cut -s -d',' -f2 file.csv
```