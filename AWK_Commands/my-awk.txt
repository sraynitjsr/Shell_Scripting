### 1. Print specific columns from a file => awk '{print $1, $3}' data.txt

### 2. Calculate and print the average of a column => awk '{sum += $1} END {print "Average:", sum/NR}' grades.txt

### 3. Filter lines based on a condition => awk '$2 > 70 {print $1, $2}' scores.txt

#### 4. Print lines that match a specific pattern => awk '/o/ {print}' names.txt
