#! /bin/bash

# \c keeps the cursor on the same line at the end of the echo
# -e flag is needed to enable the \c
# otherwise \c will get printed as it is
echo -e "Enter the name of the file: \c"
read file_name
echo -e "Enter the name of the directory: \c"
read dir_name

# -e checks if the file exists or not
if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

# > ./06_file_test_operators.sh
# Enter the name of the file: test
# test found

# -f checks if the file exists and if it is a regular file or not
if [ -f $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

# -d checks for the directories
if [ -d $dir_name ]
then
    echo "$dir_name found"
else
    echo "$dir_name not found"
fi

# Other flags:
# -c - for character special files
# -b - for block special files
# -s - checks whether file is empty or not
# -r - checks whether file has read permission
# -w - checks whether file has write permission
# -x - checks whether file has execute permission