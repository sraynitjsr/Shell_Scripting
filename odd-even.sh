#!/bin/bash

# Function to print odd numbers
print_odd_numbers() {
    n=$1
    echo "Odd Numbers:"
    for ((i=1; i<=n; i+=2)); do
        echo $i
    done
}

# Function to print even numbers
print_even_numbers() {
    n=$1
    echo "Even Numbers:"
    for ((i=2; i<=n; i+=2)); do
        echo $i
    done
}

# Main script
read -p "Enter the value of n: " n

if [[ $n -lt 1 ]]; then
    echo "Please enter a positive integer greater than 0."
else
    print_odd_numbers $n
    print_even_numbers $n
fi
