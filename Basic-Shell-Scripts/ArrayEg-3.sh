#!/bin/bash

# Associative Arrays = Python Dictionaries or Java HashTables 
# Included only after BASH 4.0 so ensure the BASH Shell supports that

# Create an associative array
declare -A assocArr=(
    [Canada]="CAD"
    [India]="INR"
    [USA]="USD"
    [UK]="GBP"
)

echo -e "\n Retrieve and print values from the Associative Array:"
echo -e "\t Currency of Canada : ${assocArr[Canada]}"
echo -e "\t Currency of India  : ${assocArr[India]}"
echo -e "\t Currency of USA    : ${assocArr[USA]}"
echo -e "\t Currency of UK     : ${assocArr[UK]}"

# ${assocArr[@]} → All values and ${!assocArr[@]} → All keys
echo -e "\n Print all keys and values:"
echo -e "\t Keys   : ${!assocArr[@]}"
echo -e "\t Values : ${assocArr[@]}"

# Loop through all keys and values in the Associative Array
echo -e "\n All key-value pairs in the Associative Array:"

for key in "${!assocArr[@]}"; 
do
    echo -e "\tCurrency of $key : ${assocArr[$key]}"
	sleep 1
done
