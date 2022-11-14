#!/bin/bash

echo "Enter number of inputs:"
read n
echo "Enter burst times: "
read -a burst
echo "Enter arrival times: "
read -a arrival

for((i=0;i<$n;i++))
do
 echo ${burst[i]}
done

for((i=0;i<$n;i++))
do
 echo ${arrival[i]}
done

