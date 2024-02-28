#!/bin/bash

# Function to generate permutations using backtracking
generate_permutations() {
    local prefix=$1
    local remaining=$2

    # Base case: if remaining is empty, print the permutation
    if [ -z "$remaining" ]; then
        echo "$prefix"
    else
        # Iterate through each element in remaining
        for ((i=0; i<${#remaining}; i++)); do
            # Recursively call the function with updated prefix and remaining elements
            generate_permutations "$prefix${remaining:$i:1}" "${remaining:0:i}${remaining:i+1}"
        done
    fi
}

# Main program
if [ $# -eq 0 ]; then
    echo "Usage: $0 <numbers>"
    exit 1
fi

numbers=$1
generate_permutations "" "$numbers"
