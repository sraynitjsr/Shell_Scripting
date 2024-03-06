#!/bin/bash

# Function to insert element into priority queue
insert() {
    element=$1
    priority=$2
    
    # Add element with priority into the queue
    queue+=("$element:$priority")
    
    # Sort the queue based on priority (descending order)
    IFS=$'\n' sorted=($(sort -t: -k2 -rn <<<"${queue[*]}"))
    unset IFS
    queue=("${sorted[@]}")
}

# Function to remove and return the element with the highest priority
remove() {
    # Remove the first element from the queue
    element=$(cut -d: -f1 <<<"${queue[0]}")
    
    # Remove the first element from the queue array
    queue=("${queue[@]:1}")
    
    echo "$element"
}

# Function to display the priority queue
display() {
    echo "Priority Queue:"
    for item in "${queue[@]}"; do
        echo "$item"
    done
}

# Sample usage
insert "Task 1" 2
insert "Task 2" 1
insert "Task 3" 3

display

removed=$(remove)
echo "Removed: $removed"

display
