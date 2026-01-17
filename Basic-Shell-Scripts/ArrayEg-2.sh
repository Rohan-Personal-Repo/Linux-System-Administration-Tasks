#!/bin/bash

# Indexed Arrays
userNames=("Chandler" "Monica" "Ross" "Joey" "Phoebe" "Rachel" "Gunther")

arrSize=${#userNames[@]}

echo 'Array Size = ' $arrSize

echo -e '\n Array Content Positive Index (0 to 6):'
for ((i=0; i<arrSize; i++));
do
	echo -e '\t ' $i ' : ' ${userNames[$i]}
	sleep 1
done

echo -e '\n Array Content Negative Index (-7 to -1):'
for ((i=-1; i>=-arrSize; i--));
do
	echo -e '\t ' $i ' : ' ${userNames[$i]}
	sleep 1
done

echo -e '\n Print Entire Array Content (* or @):'
echo -e '\t (*) :' ${userNames[*]}
echo -e '\t (@) :' ${userNames[@]}