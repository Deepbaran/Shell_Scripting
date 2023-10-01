#! /bin/bash

# To perform operations on decimal numbers we need to use the bc (basic calculator) operator
# Most of the time bc comes with the linux distribution
# bc - An arbitrary precision calculator language

num1=20.5
num2=5

# Whatever is at the left hand side of the pipe will be treated as the input for the command on the right hand side of the pipe
# This means, <echo "20.5+5"> is treated as input for bc command.
echo "20.5+5" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5/5" | bc # This will give only the return value. To get a decimal result, we need to use scale
echo "scale=2;20.5/5" | bc # scale=2 defines, we want the result upto 2 decimal places. By default, scale is set to 0
echo "20.5%5" | bc

echo "$num1+$num2" | bc
echo "$num1-$num2" | bc
echo "$num1*$num2" | bc
echo "scale=2;$num1/$num2" | bc
echo "$num1%$num2" | bc

# With the bc command, we can perform operations like
# Square root
# Trigonometric operations
# etc.

# Square Root & power
num=4

echo "scale=2;sqrt($num)" | bc -l # As sqrt is a math function, we need to get the math library. For this we use the -l flag with bc
echo "scale=2;3^3" | bc -l