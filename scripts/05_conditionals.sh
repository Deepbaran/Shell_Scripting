#! /bin/bash

# if [ condition ]
# then
#     statement
# fi

count=10
word=a

if [ $count -eq 10 ]
then
    echo "condition is true"
fi

if [ $count -ne 9 ]
then
    echo "condition is true"
fi

if [ $count -gt 9 ]
then
    echo "condition is true"
fi

if (($count > 9))
then
    echo "condition is true"
fi

if [ $word == "abc" ]
then
    echo "condition is true"
fi

if [[ $word < "b" ]]
then
    echo "condition is true"
fi

if [[ $word > "b" ]]
then
    echo "condition is true"
else
    echo "condition is false"
fi

if [[ $word == "b" ]]
then
    echo "condition b is true"
elif [[ $word == "a" ]]
then
    echo "condition q is true"
else
    echo "condition is false"
fi