#! /bin/bash

# until [ condition ]
# do
#     command1
#     command2
#     ...
#     ....
#     commandN
# done

# If the conditions are false, then only commands are executed
# opposite of while loop

n=1
until [ $n -gt 10 ] # the moment this condition becomes true, the loop will end
do
    echo $n
    (( n++ ))
done