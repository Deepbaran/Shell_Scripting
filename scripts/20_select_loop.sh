#! /bin/bash

# select loop allows us to generate easy menus

# select varName in list
# do
#     command1
#     command2
#     ...
#     ....
#     commandN
# done

# basic select loop
# select name in mark john tom ben
# do
#     echo "$name selected"
# done

# select loop iterates over the list and gives us a kind of menu structure for us to select from
# and then we can execute some command based on the selected value
# select loop is often used with the case statement

# select loop with case statement
select name in mark john tom ben
do
    case $name in
    mark )
        echo "mark selected"
        ;;
    john )
        echo "john selected"
        ;;
    tom )
        echo "tom selected"
        ;;
    ben )
        echo "ben selected"
        ;;
    * )
        echo "ERROR!!! Please provide the option between 1..4"
    esac
done