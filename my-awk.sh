### 1. Print specific columns from a file => awk '{print $1, $3}' data.txt

### 2. Calculate and print the average of a column => awk '{sum += $1} END {print "Average:", sum/NR}' grades.txt
