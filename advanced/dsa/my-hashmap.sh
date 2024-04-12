#!/bin/bash

# Declare an associative array
declare -A hashmap

hashmap["apple"]="fruit"
hashmap["banana"]="fruit"
hashmap["carrot"]="vegetable"

echo "Type of apple: ${hashmap["apple"]}"
echo "Type of banana: ${hashmap["banana"]}"
echo "Type of carrot: ${hashmap["carrot"]}"

echo "Iterating over keys in the hashmap:"
for key in "${!hashmap[@]}"; do
    echo "Key: $key, Value: ${hashmap[$key]}"
done
