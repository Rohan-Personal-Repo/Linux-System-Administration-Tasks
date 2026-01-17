#!/bin/bash

#Read Variable Number of Values from Cmd Line
# Array will run based on the number of arguments we pass it

for arg in "$@";
do
	echo "Arg = " $arg
done

# Sample CmdLine Input:
# $  ./cmdLineArgs-2.sh JohnDoe JaneDoe
# Arg =  JohnDoe
# Arg =  JaneDoe

# $  ./cmdLineArgs-2.sh JohnDoe JaneDoe 123 456 789
# Arg =  JohnDoe
# Arg =  JaneDoe
# Arg =  123
# Arg =  456
# Arg =  789