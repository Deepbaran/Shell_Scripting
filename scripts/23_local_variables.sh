#! /bin/bash

# By default every variable defined in the script is a global variable.

function print(){
    # name=$1 # this will mutate the global name varibale

    # local variables
    local name=$1 # If we do not add the local keyword, then the name variable will mutate any name global variable once executed
    
    echo "the name is $name"
}

name=Tom # global variable
echo "the name is $name : Before"
print Max # the name is Max
echo "the name is $name : After"

# Without the local keyword in the name variable inside the print function:
# the name is Tom : Before
# the name is Max
# the name is Max : After

# Without the local keyword in the name variable inside the print function:
# the name is Tom : Before
# the name is Max
# the name is Tom : After
