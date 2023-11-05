#!/bin/bash

# Define the namespace and grep pattern
namespace="my-space"
grep_pattern="my-data"

# Get the list of pods and store them in an array, here I'm just printing/filtering ONLY $1 for example purpose
pod_list=($(kubectl get pods -n $namespace | grep $grep_pattern | awk '{print $1}'))

if [ ${#pod_list[@]} -eq 0 ]; then
  echo "No pods matching the pattern '$grep_pattern' found in the '$namespace' namespace."
else
  echo "Pods matching the pattern '$grep_pattern' in the '$namespace' namespace:"
  for pod in "${pod_list[@]}"; do
    echo "$pod"
  done
fi
