#! /bin/bash

# bash supports simple 1-D arrays
os=('ubuntu' 'windows' 'kali')

echo "${os[@]}" # prints all the elements in the array
echo "${os[0]}"
echo "${os[1]}"
echo "${!os[@]}" # print the indices of the array
echo "${#os[@]}" # print the length of the array

# add elements
os[3]='mac'
echo "${os[@]}" # ubuntu windows kali mac

#update element in the array
os[0]='debian'
echo "${os[@]}" # debian windows kali mac

# remove element from the array
unset os[2]
echo "${os[@]}" # debian windows mac

# In bash, some elemnts can be left uninitialized in the array and null values are OK
os[6]='kali'
echo "${os[@]}" # debian windows mac kali
# elements 3, 4, and 5 are left uninitialized and this is allowed in bash

# We can treat variables as arrays also
string=dasdasdasdasdasd
echo "${string[@]}" # dasdasdasdasdasd
echo "${string[0]}" # dasdasdasdasdasd
echo "${string[1]}" # Nothing will be printed
echo "${#string[@]}" # 1
# when treating a variable as an array, the value gets set at the 0th index of the array
# So, basically an array of length 1