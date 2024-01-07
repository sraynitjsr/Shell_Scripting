#!/bin/bash

# Function to print odd numbers
print_odd_numbers() {
    n=$1
    echo "Odd Numbers:"
    for ((i=1; i<=n; i+=2)); do
        echo $i
        sleep 0.1 # Simulating some work
    done
}

# Function to print even numbers
print_even_numbers() {
    n=$1
    echo "Even Numbers:"
    for ((i=2; i<=n; i+=2)); do
        echo $i
        sleep 0.1 # Simulating some work
    done
}

# Main script
read -p "Enter the value of n: " n

if [[ $n -lt 1 ]]; then
    echo "Please enter a positive integer greater than 0."
else
    # Run functions in the background
    print_odd_numbers $n &
    odd_pid=$!

    print_even_numbers $n &
    even_pid=$!

    # Wait for both background processes to finish
    wait $odd_pid
    wait $even_pid
fi
