#! /bin/bash

# echo by default treats everything as a string
# to perform arithmetic operations, use $(())

num1=20
num2=5

echo $(( num1 + num2 )) # num1 and num2 will be treated as numbers here
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

# Using expr command
echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 ) # With expr, * is not escaped by default, we need to manually add an escape character
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )