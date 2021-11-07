#!/bin/bash
read -a arr
for ((i=1;i < ${#arr[*]};i++))
do
 for((j=0;j < ${#arr[*]}-$i;j++))
 do
  if [ ${arr[j]} -gt ${arr[(($j+1))]} ]
  then temp=${arr[j]}
   arr[j]=${arr[$(($j+1))]}
   arr[$(($j+1))]=$temp
  fi
 done
done
echo ${arr[*]}
