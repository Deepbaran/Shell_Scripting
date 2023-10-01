#! /bin/bash

# By default the arguments passed to this script will get stored to the below three variables
echo $0 $1 $2 $3 ' > echo $0 $1 $2 $3'
# $0 holds the name of the script
# then the actual passed varaibles starts getting stored from $1 and so on

# Parse arguments into an array
args=("$@") # $@ stores the arguments into an array and then we parse that array into args varaibles

echo ${args[0]} ${args[1]} ${args[2]}
# Unlike default varaibles, when parsing the passed variables into an array, 
# the 0th variable gets assigned the 1st argument rather then the script name.

# Print all variables at once
echo $@

# Print the number of arguments
echo $#