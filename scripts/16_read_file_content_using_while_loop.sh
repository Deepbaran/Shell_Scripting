#! /bin/bash

# using input redirection
while read p
do
    echo $p
done < test
# The data in the test file is redirected to the while loop
# Then it is directed to the read command
# Then it is directed to the echo command 

# using pipes
cat test | while read p
do
    echo $p
done
# The content that is read from the test file using the cat command
# is passed to the while loop as argument
# this argument is directed to the read command
# and that is directed to the echo command

# read files with special characters or indentations
while IFS= read -r line
# while IFS=' ' read -r line
do
    echo $line
done < test
# IFS: Internal Field Separator
# It is used by the shell to determine, how to do word splitting. How to regognise word boundaries.
# NOTE:
# We are not assiging <read -r p> to IFS.
# We are assigning a space to the IFS
# The -r flag prevents backslash escape characters (\n,\c, etc.) from getting interpreted