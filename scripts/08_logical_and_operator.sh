#! /bin/bash

age=50

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi

# -a => &&
if [ "$age" -gt 18 -a "$age" -lt 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi

if [[ "$age" -gt 18 && "$age" -lt 30 ]]
then
    echo "valid age"
else
    echo "age not valid"
fi

if (( "$age" > 18 && "$age" < 30 ))
then
    echo "valid age"
else
    echo "age not valid"
fi