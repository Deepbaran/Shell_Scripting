#! /bin/bash

usage() {
    echo "You need to provide an argument : "
    echo "usage : $0 file_name"
}

is_file_exist() {
    local file=$1 # this $1 is the 1st argument passed to the function
    # Ternary operator
    [[ -f $file ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage
# usage function will get called only if the number of arguments passed is 0
# otherwise circuit break will happen and usage will not get called

if ( is_file_exist "$1" ) # this $1 is the 1st argument passed to the script
then
    echo "File found"
else
    echo "File not found"
fi