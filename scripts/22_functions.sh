#! /bin/bash

# function name(){
#     commands
# }

# name () {
#     commands
# }

# By default every variable defined in the script is a global variable.

function Hello(){
    echo "Hello"
}

quit () {
    exit
}

function print(){
    echo $1 $2 $3 # first 3 arguments passed to the function
}

# quit # Nothing below will be executed as quit funciton exits the script

Hello
print Hello Deep "Kar" # Hello Deep Kar
print Hello Deep # Hello Deep

# quit # Nothing below will be executed as quit funciton exits the script

echo "foo"

quit # Nothing below will be executed as quit funciton exits the script
