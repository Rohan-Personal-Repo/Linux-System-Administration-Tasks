#!/bin/bash

#echo 'Enter your Name: '
#read uName 

#echo 'Enter your Age: '
#read uAge 

uName=$1
uAge=$2

if [ $uAge -ge 18 ]
then
	echo "$uName who is $uAge years old is eligible to vote"
else
	echo "$uName who is $uAge years old is NOT eligible to vote"
fi

# Sample CmdLine Input:
# $ ./cmdLineArgs.sh JohnDoe 25
# JohnDoe who is 25 years old is eligible to vote

# $ ./cmdLineArgs.sh JaneDoe 12
# JaneDoe who is 12 years old is NOT eligible to vote