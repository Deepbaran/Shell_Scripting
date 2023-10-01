#! /bin/bash

# break and continue behave similar to other languages

for (( i=1; i<=10; i++ ))
do
    if [ $(( i%2 )) -eq 0 ]
    then
        continue
    fi

    echo $i

    if [ $i -gt 5 ]
    then
        break
    fi
done

# Without continue:
# 1
# 2
# 3
# 4
# 5
# 6

# With continue:
# 1
# 3
# 5
# 7