#!/bin/bash -x
read -p "How many times to loop" n
no_of_heads=0
no_of_tails=0
for((i=0;i<n;i++))
do
random=$((RANDOM%2))
if [ $random -eq 1 ]
then
echo "Heads"
no_of_heads=$(($no_of_heads+1))
echo "Number of heads = $no_of_heads"
else
echo "Tail"
no_of_tails=$(($no_of_tails+1))
echo "Number of tails $no_of_tails"
fi
done
