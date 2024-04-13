#!/bin/bash

# Print lines containing a specific pattern
sed -n '/Virat/p' sample.txt

# Replace text in a file
sed -i 's/Jaddu/Jadeja/' sample.txt

# Add text after a specific line number
sed -i '3a\Kohli 30' sample.txt

# Insert text before a specific line number
sed -i '4i\Sachin 50' sample.txt

# Substitute only the nth occurrence of a pattern in each line
sed -i 's/Rohit/Rohit Sharma/1' sample.txt
