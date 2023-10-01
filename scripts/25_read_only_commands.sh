#! /bin/bash

# Read only commands can only be used with variables or functions
# These can make variables or functions, read-only and not be overwritten

var=31

readonly var # var cannot be overwritten anymore

var=50 # This will give error as it is set as readonly
# ./25_read_only_commands.sh: line 10: var: readonly variable

echo "var => $var" # var => 31

hello() {
    echo "Hello world"
}

# for functions we need to use -f for makig it readonly
readonly -f hello # Making te hello funciton readonly
hello # Hello world

hello() { # this will give error as hello is readonly function and it cannot be overwritten
    echo "Hello world again"
}

readonly # This will print all the builtin and user defined readonly variables in bash
# readonly -p # This will do the same thing as the above line

# ./25_read_only_commands.sh: line 10: var: readonly variable
# var => 31
# Hello world
# ./25_read_only_commands.sh: line 25: hello: readonly function
# declare -r BASHOPTS="cmdhist:complete_fullquote:extquote:force_fignore:hostcomplete:interactive_comments:progcomp:promptvars:sourcepath"
# declare -ir BASHPID
# declare -ar BASH_VERSINFO=([0]="4" [1]="4" [2]="20" [3]="1" [4]="release" [5]="x86_64-pc-linux-gnu")
# declare -ir EUID="1000"
# declare -ir PPID="9"
# declare -r SHELLOPTS="braceexpand:hashall:interactive-comments"
# declare -ir UID="1000"
# declare -r var="31"


readonly -f # This will give all the readonly functions

# hello ()
# {
#     echo "Hello world"
# }
# declare -fr hello