#! /bin/bash

# for VARIABLE in 1 2 3 4 5 .. N
# do
#     command1
#     command2
#     commandN
# done
# #OR-----------------------------------------------------------

# for VARIABLE in file1 file2 file3
# do
#     command1
#     command2
#     commandN
# done
# #OR-----------------------------------------------------------

# for OUTPUT in $(LINUX-Or-Unix-Command-Here)
# do
#     command1 on $OUTPUT
#     command2 on $OUTPUT
#     commandN
# done
# #OR-----------------------------------------------------------

# for (( EXP1; EXP2; EXP3 )) # initialize; condition; increment/decrement
# do
#     command1 on $OUTPUT
#     command2 on $OUTPUT
#     commandN
# done
#-----------------------------------------


#-----------------------------------------
for i in 1 2 3 4 5
do
    echo $i
done

# with bash version > 4.0
for i in {1..10} # start..end
do
    echo $i
done

for i in {1..10..2} # start..end..step
do
    echo $i
done
#-----------------------------------------

for (( i=0; i<5; i++ ))
do
    echo $i
done
#-----------------------------------------