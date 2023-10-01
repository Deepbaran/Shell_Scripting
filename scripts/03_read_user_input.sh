#! /bin/bash

echo "Enter name : "
read name
echo "The entered name : $name"

# Read multiple values
echo "Enter names : "
read name1 name2 name3
echo "The entered names : $name1, $name2, $name3"

# Take input on the same line
read -p 'username: ' user_var # -p allows us to enter on the same line
echo "username : $user_var"

# Taking in silent passowrd (e.g. Password)
read -sp 'passowrd : ' pass_var
echo # add a new line
echo "passowrd : $pass_var"

# Store inputs inside an array
echo "Enter names : "
read -a names
echo "Names : ${names[0]}, ${names[1]}"
echo "Names : ${names[0]}, ${names[1]}"

# If no varaible is given for read
echo "Enter name : "
read # When no varibale is given, the input goes to the default variable, REPLY
echo "Name : $REPLY"