#! /bin/bash

# switch-case

# In patterns we can use regex and strict pattern both

# case expression in
#     pattern1 )
#         statements ;;
#     pattern2 )
#         statements ;;
#     ...
# esac

# strict pattern.
vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollar" ;;
    "van" )
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck" )
        echo "Rent of $vehicle is 150 dollar" ;;
    * ) # * is a wildcard that matches any text
        echo "Unknown vehicle" ;;
esac

# regex pattern
echo -e "Enter some character \c"
read value

case $value in
    [a-z] )
        echo "User entered $value a to z" ;;
    [A-Z] )
        echo "User entered $value A to Z" ;;
    [0-9] )
        echo "User entered $value 0 to 9" ;;
    ? ) # ? expects any ONE letter special character
        echo "User entered $value special character" ;;
    * ) # * expects one or more than one special characters or any characters
        echo "Unknown input" ;;
esac