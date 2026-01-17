#!/bin/bash

# Counter Controlled Loop - For Loop

echo -e "\n Use Date Directly:" 
for loopVar in {1..10}
do
	echo -e "\t DateTime : $(date)" 
	sleep 2
done

echo -e "\n Use printf and specify DateTimeFormat:" 
for loopVar in {1..10}
do
	printf '\t The Current DateTime is : %(%Y/%m/%d %H:%M:%S %Z)T\n'
	sleep 2
done

# Check out strftime man pages