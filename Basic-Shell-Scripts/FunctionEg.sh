#!/bin/bash

echo "Function without parameters:"

sayHello() {
    echo -e "\t Hello Everyone!"
}

sayHello

# Same Output everytime without parameters
# Customize Code and O/P as per requirement

echo -e "\n Function with parameters:"

greetUser() {
    # msg is a local variable whose scope is limited to that of the function
    local msg=$1
    echo -e "\t User Says: $msg"
}

greetUser "Bonjour!"
greetUser "Hola"

calculateSum() {
    # Since nums is an Array and not a single Value
    local nums=("$@")

    local sum=0

    for num in "${nums[@]}";
    do
        sum=$((sum + num))
    done

    # Pass the Result as echo and not as return cause it stops at 255
    # return $sum 
    echo "$sum"
}

nums=( {1..10} )
result=$(calculateSum "${nums[@]}")
echo "Sum = $result"

# return a value from the function and accept with $?
isEven() {
    local num=$1

    if (( num % 2 == 0 )); then
        return 0   # success (true)
    else
        return 1   # failure (false)
    fi
}

isEven 10
echo "Return value = $?"   # As Even

isEven 7
echo "Return value = $?"   # As Odd