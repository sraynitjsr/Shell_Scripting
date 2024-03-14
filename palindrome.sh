#!/bin/bash

# Function to check if a number is palindrome
is_palindrome() {
    local num=$1
    local reversed=0
    local original=$num

    while [ $num -gt 0 ]; do
        local digit=$((num % 10))
        reversed=$((reversed * 10 + digit))
        num=$((num / 10))
    done

    if [ $reversed -eq $original ]; then
        return 0   # Palindrome
    else
        return 1   # Not palindrome
    fi
}

# Input range from the user
echo "Enter the range (start and end):"
read start end

echo "Palindromes within the range $start to $end are:"

# Iterate through the range and check for palindromes
for (( num=$start; num<=$end; num++ )); do
    if is_palindrome $num; then
        echo $num
    fi
done
