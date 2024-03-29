closest_to_zero() {
    arr=("$@")
    n=${#arr[@]}
    min_sum=$((arr[0] + arr[1]))
    min_index1=0
    min_index2=1
    for ((i=0; i<n-1; i++))
    do
        for ((j=i+1; j<n; j++))
        do
            if [ $((arr[i] + arr[j])) -lt $min_sum ]; then
                min_sum=$((arr[i] + arr[j]))
                min_index1=$i
                min_index2=$j
            fi
        done
    done
    echo "Two elements whose sum is closest to zero are: ${arr[min_index1]} and ${arr[min_index2]}"
}
arr=(1 60 -10 70 -80 85)
closest_to_zero "${arr[@]}"
