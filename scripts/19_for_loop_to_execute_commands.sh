#! /bin/bash

# the passed commands will be executed one by one
for command in ls pwd date
do
    echo "--------------------$command--------------------"
    $command # this will execute the command
done

# iterate over every file in the directory
for item in * # * means, iterate over each and every file in the directory
do
    if [ -f $item ]
    then
        echo $item
    fi
done