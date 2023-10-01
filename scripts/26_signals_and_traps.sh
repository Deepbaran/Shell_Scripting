#! /bin/bash

# Some signals can kill or interrupt process in mid-processing
# That's why we use Trap command
# Trap command provides the script to capture and interrupt and then clean it up within the script
# Trap command will be able to catch/trap the kill or interrupt commands
# And after catching/trapping the kill/interrupt command, we can do certain stuff before exiting out.
# Like an Exception handling, except in this case, user provides the commands and not the system.
# EXCEPTIONS: Trap cannot catch SIGKILL or SIGSTOP commands

# Signals [To get all the available signals, run "man 7 signal" command]
# SIGINT    - 2         - Interrupt Signal  - Ctrl+C
# SIGTSTP   - 18,20,24  - Suspend Signal    - Ctrl+Z
# SIGKILL   - 9         - Kill Signal       - > kill -9 <PID>
# SIGTERM   - 15        - Terminate Signal


# Traps
# trap "echo Exit command is detected" 0 # This trap is going to execute the command, the moment a signal 0 happens
# echo "Hello world"

# # success signal
# exit 0  # Trap for signal 0 will get triggered

# # Hello world
# # Exit command is detected


# trap "echo Exit signal is detected" SIGINT
# # with the above trap command, once a SIGINT command is detected, 
# #rather than ending the execution there, it will execute the echo command defined here, 
# #in the terminal and continue with the execution
# echo "pid is $$"
# while (( COUNT < 10 ))
# do
#     sleep 10
#     (( COUNT++ ))
#     echo $COUNT
# done
# exit 0


# > touch file.txt
# > pwd
# /mnt/d/Upskilling/skills/bash_scripting/scripts
file=/mnt/d/Upskilling/skills/bash_scripting/scripts/file.txt
trap "rm -f $file && echo file deleted; exit" 0 2 15
# If any of the above 3 signals (0, 2, 15) are caught then
# remove the file forcefully then echo the text and exit the script
echo "pid is $$"
while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT++ ))
    echo $COUNT
done
exit 0

# to see all the traps there in the script (use a 2nd terminal)
# > trap

# remove traps (use another terminal than the executing terminal)
# > traps - 0 2 15 # removes traps for the signals 0 2 15