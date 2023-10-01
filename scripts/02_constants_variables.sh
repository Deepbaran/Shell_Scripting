#! /bin/bash

# System Variables
echo Our shell name is $SHELL
echo Our shell name is $BASH
echo Our shell version name is $BASH_VERSION
echo Our home directory is $HOME
echo Our current working directory is $PWD

# User defined variables
name=Mark
10val=10
val=10
echo The name is $name # The name is Mark
echo value $10val # value 0val <- This happens because we cannot start our variable name with numbers
echo value $val # value 10