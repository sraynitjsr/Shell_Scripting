#!/bin/bash

# Get list of worker nodes
worker_nodes=$(kubectl get nodes -o=jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}' | grep -v master)

# Loop through each worker node and gather details
for node in $worker_nodes; do
    echo "Node: $node"
    echo "-------------------------"

    # Get CPU details
    cpu_capacity=$(kubectl describe node $node | grep "cpu" | grep -Eo '[0-9]+m' | awk '{s+=$1} END {print s/1000 " cores"}')
    cpu_allocatable=$(kubectl describe node $node | grep "Allocatable" | grep -Eo '[0-9]+m' | awk '{s+=$1} END {print s/1000 " cores"}')
    cpu_usage=$(kubectl top node $node | grep -Eo '[0-9]+' | awk '{s+=$1} END {print s "m"}')

    echo "CPU Capacity: $cpu_capacity"
    echo "CPU Allocatable: $cpu_allocatable"
    echo "CPU Usage: $cpu_usage"

    # Get Memory details
    memory_capacity=$(kubectl describe node $node | grep "Memory" | grep -Eo '[0-9]+' | awk '{print $1/1024/1024 " GiB"}')
    memory_allocatable=$(kubectl describe node $node | grep "Allocatable" | grep -Eo '[0-9]+' | awk '{print $1/1024/1024 " GiB"}')
    memory_usage=$(kubectl top node $node | grep -Eo '[0-9]+' | awk '{s+=$2} END {print s/1024/1024 " GiB"}')

    echo "Memory Capacity: $memory_capacity"
    echo "Memory Allocatable: $memory_allocatable"
    echo "Memory Usage: $memory_usage"

    echo ""
done
