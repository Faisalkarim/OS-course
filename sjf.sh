#!/bin/bash
echo "Enter number of inputs:"
read n
echo "Enter names: "
read -a names
for((i=0;i<$n;i++))
do
 echo ${names[i]}
done

# Performing Bubble sort 
for ((i = 0; i<$n; i++))
do
    
    for((j = 0; j<$n-$i-1; j++))
    do
    
        if [ ${names[j]} -gt ${names[$((j+1))]} ]
        then
            # swap
            temp=${names[j]}
            names[$j]=${names[$((j+1))]}  
            names[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${names[*]}

n=$((n-1))
wt=(0 0 0 0 0 0 0 0)

for ((i=1;i<=$n;i++));
do
	wt[i]=$((names[i-1]+wt[i-1]))
done
total=0
for t in ${wt[@]}
do
	# echo $t
	total=$((total+t))
done
# awt=$((total/3))
n=$((n+1))
echo  "scale=3;$total/$n"|bc
