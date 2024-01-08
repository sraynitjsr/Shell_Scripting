#!/bin/bash

find_minimum() {    
    min=${array[0]}
    for element in "${array[@]}"; do
        if [ "$element" -lt "$min" ]; then
            min=$element
        fi
    done
    echo "Minimum element: $min"
}

find_maximum() {
    max=${array[0]}
    for element in "${array[@]}"; do
        if [ "$element" -gt "$max" ]; then
            max=$element
        fi
    done
    echo "Maximum element: $max"
}

array=(5 3 8 1 6)

find_minimum

find_maximum
