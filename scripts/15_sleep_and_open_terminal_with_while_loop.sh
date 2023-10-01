#! /bin/bash

# sleep
n=1
while [ $n -le 10 ]
do
    echo "$n"
    (( n++ ))
    sleep 1 # pauses the execution for 1 second
done

# open terminal
n=1
while [ $n -le 3 ]
do
    echo "$n"
    (( n++ ))
    # command to open wsl terminal using cmd in windows
    cmd.exe /c start cmd.exe /c wsl.exe
done