#!/bin/bash 
read -p "How many times to loop" n
no_of_heads=0
no_of_tails=0
while [ $no_of_heads -lt 21 -a $no_of_tails -lt 21 ]
do
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
done
		if [ $no_of_heads -gt $no_of_tails ]
		then
		echo "Heads won by $no_of_heads times"
		elif [ $no_of_heads -lt $no_of_tails ]
		then
		echo "Tails won by $no_of_tails times"
		else
		echo "Its a Tie"
		fi

