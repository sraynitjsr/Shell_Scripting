#!/bin/bash

# Function to check if two strings are anagrams
is_anagram() {
    str1=$1
    str2=$2

    # Sort the characters of both strings
    sorted_str1=$(echo $str1 | tr -d '\n' | grep -o . | sort | tr -d '\n')
    sorted_str2=$(echo $str2 | tr -d '\n' | grep -o . | sort | tr -d '\n')

    # Compare the sorted strings
    if [ "$sorted_str1" == "$sorted_str2" ]; then
        echo "Anagrams!"
    else
        echo "Not Anagrams!"
    fi
}

# Read two strings from the user
echo "Enter the first string:"
read string1

echo "Enter the second string:"
read string2

# Call the function to check if they are anagrams
is_anagram "$string1" "$string2"
