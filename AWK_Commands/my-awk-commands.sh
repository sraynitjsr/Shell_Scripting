#!/bin/bash

# Print First Column of a File
awk '{print $1}' players.txt

# Print Specific Column (e.g., 3rd)
awk '{print $3}' players.txt

# Print Lines Matching a Pattern
awk '/Sourav/' players.txt

# Print Lines Not Matching a Pattern
awk '!/Sourav/' players.txt

# Print Lines Longer Than a Certain Length (e.g., 8)
awk 'length > 8' players.txt

# Print Number of Lines in a File
awk 'END {print NR}' players.txt

# Calculate Sum of Numbers in a Column
awk '{sum+=$2} END {print sum}' players.txt

# Print Lines Between Two Patterns (inclusive)
awk '/Sourav/,/Virat/' players.txt

# Print Number of Words in a File
awk '{words+=NF} END {print words}' players.txt

# Print Unique Entries in a Column
awk '!seen[$1]++' players.txt

# Print Nth Line of a File
awk 'NR==3' players.txt

# Print Lines Based on Delimiter (e.g., colon)
awk -F'\t' '{print $1}' players.txt

# Print Lines in Reverse Order
awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j--] }' players.txt

# Print Lines in Random Order
awk 'BEGIN{srand()} {print rand(), $0}' players.txt | sort -k1n | cut -d' ' -f2-

# Print Number of Lines Matching a Pattern
awk '/Sourav/{count++} END {print count}' players.txt
