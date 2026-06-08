# Cut
| Command | Description |
|---------|-------------|
| cut -d',' -f1 file.csv | Extract field 1 using comma delimiter |
| cut -d',' -f1,3 file.csv | Extract fields 1 and 3 |
| cut -d',' -f1-4 file.csv | Extract fields 1 through 4 |
| cut -d':' -f1 /etc/passwd | Extract usernames |
| cut -d':' -f1,3,7 /etc/passwd | Extract user, UID, shell |
| cut -c1-5 file.txt | Extract characters 1–5 |
| cut -c5- file.txt | Extract from character 5 to end |
| cut -c-10 file.txt | Extract first 10 characters |
| echo "$PATH" \| cut -d':' -f3 | Extract 3rd PATH entry |
| cut -f1,3 file.tsv | Extract tab-separated fields |
| cut --complement -d',' -f2 file.csv | Remove field 2 |
| cut -d' ' -f2-4 file.txt | Extract fields 2 to 4 |
| cut -d';' -f1 file.txt | Extract first field using semicolon |
| cut -s -d',' -f2 file.csv | Suppress lines without delimiter |