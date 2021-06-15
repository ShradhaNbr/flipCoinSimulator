#!/bin/bash 
no_of_heads=0
no_of_tails=0
while [ $no_of_heads -lt 21 -a $no_of_tails -lt 21 ]
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

		if [ $no_of_heads -gt $no_of_tails ]
		then
		echo "Heads won by $no_of_heads times"
		exit
		elif [ $no_of_heads -lt $no_of_tails ]
		then
		echo "Tails won by $no_of_tails times"
		exit
		elif [ $no_of_heads -eq $no_of_tails ]
		then
		echo "Its a Tie"
		while [ $no_of_heads - $no_of_tails -eq 2 -a $no_of_tails - $no_of_heads -eq 2 ]
		do
		random=$((RANDOM%2))
		done
		fi
