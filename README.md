# Shell_Scripting :)
This repository holds all of my Shell Scripting notes.
I have executed all of these scripts in windows 10 with a wsl terminal.

---

# Basics

- What is Shell?
    - A shell program interprets user commands which are directly entered by the user or which can be read from a file called the Shell Script or shell program.
    - Shell Scripts are interpreted (by OS) and not compiled.
- Variables:
    - Thera are two types of variables in a shell system
        - System variables: Created and maintaned by Linux/Unix OS
            - Pre-defined variables.
            - Defined in CAPITAL cases
        - User defined variables: Created and maintained by the users
            - Generally defined in lower cases
- Thera are two types of files:
    1. Character special file: Holding normal text or normal character
    2. Block special file: This contains binary data, such as an image or video or PDF or etc.
- Type of conditional statments in bash
    1. if-elif-else
    2. case-pattern
    3. Ternary-operator
- Type of loops in bash:
    1. while
    2. until
    3. for
    4. select
- Two exit signals:
    - 0 : Success
    - 1 : Failure

# Bash
- Comparison operators:
    - Integer comparison
    - String comparison
```
# Integer comparison
-eq - is qual to - if [ "$a" -eq "$b" ]
-ne - is not equal to - if [ "$a" -ne "$b" ]
-gt - is greater than - if [ "$a" -gt "$b" ]
-ge - is greater than or equal to - if [ "$a" -ge "$b" ]
-lt - is less than - if [ "$a" -lt "$b" ]
-le - is less than or equal to - if [ "$a" -le "$b" ]
<   - is less than - (("$a" < "$b"))
<=  - is less than or qual to - (("$a" <= "$b"))
>   - is greater than - (("$a" > "$b"))
>=  - is greater than or equal to - (("$a" >= "$b"))

# String comparison
=   - is equal to - if [ "$a" = "$b" ]
==  - is equal to - if [ "$a" == "$b" ]
!=  - is not equal to - if [ "$a" != "$b" ]
<   - is less than, in ASCII alphabetical order - if [[ "$a" < "$b" ]]
>   - is greater than, in ASCII alphabetical order - if [[ "$a" > "$b" ]]
-z  - string is null, that is, has zero length
```
- Special Variables and Arguments

There are some special variable names that we can not use a variable name.
```
$0:         The name of the Bash script.
$n:         n is a positive deciamal number. $1 stands for first argument.
$#:         How many arguments were passed to the Bash script.
$@:         All the arguments supplied to the Bash script.
$?:         The exit status of the most recently run process.
$$:         The process ID of the current script.
$!:         The process number of the last background command.
$USER:      The username of the user running the script.
$HOSTNAME:  The hostname of the machine the script is running on.
$SECONDS:   The number of seconds since the script was started.
$RANDOM:    Returns a different random number each time is it referred to.
$LINENO :   Returns the current line number in the Bash script.
```
- Input redirection: Wherever the pointing edge of the angle bracket is, the stream of the read content goes to that direction.
```
echo "Hello World" > test
# The read content is "Hello World" in the terminal.
# This will be directed to / flowed to the test file
```
- Different ways to run a script in verbose debug mode

    - ```
      > bash -x ./script_name.sh
      ```
    - Use this at the top of the script "#! /bin/bash -x" instead of just "#! /bin/bash"
    - Add the line "set -x" at the top of the script. This activates debugging from the point it is written. To stop debugging add the line "set +x" at the point where you want to stop debugging.
- Setting the language of the terminal to C (If regex does not work properly)
```
> LANG=C # "C" is the language/locale setting and encoding
```

# Generic Commands

- Type of Shells supported by the terminal
```
> cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/bash
/bin/rbash
/bin/dash
/usr/bin/tmux
/usr/bin/screen
```
- To know where bash is located
```
> which bash
/bin/bash

> echo $SHELL
/bin/bash
```
- Create a file (With only read and write permission [rw])
```
> touch 01_hello.sh
```
- Check files in the directory
    - Flags:
        * -l   -   additional info  
        * -lh  -   file size in human readable format 
        * -lr  -   Sort the o/p in reverse order
        * -lt  -   Sort files and directories y time and date of creation/modification
        * -lrt -   Sort file names in the last modification time in reverse order.
        * -la  -   Show hidden files
```
> ls -al
total 0
drwxrwxrwx 1 deepbaran deepbaran 4096 Sep 30 11:53 .
drwxrwxrwx 1 deepbaran deepbaran 4096 Sep 30 11:54 ..
-rwxrwxrwx 1 deepbaran deepbaran    0 Sep 30 11:53 01_hello.sh
```
- To add or remove execute permission to a file/directory [x]
```
> chmod +x 01_hello.sh # Add execute permission
> chmod -x 01_hello.sh # remove execute permission
```
- Change file/directory ownership
```
> chown owner_name file_name
```
- Execute the script
```
> ./01_hello.sh
```
- Read from the terminal
```
> read val
```
- Clear the terminal
```
> clear # Ctrl+L
```
- Create a directory
```
> mkdir dir
```
- remove directory
```
> rmdir dir
```
- Change directory
```
> cd dir
> cd ..
```
- Write text in a file (Type Ctrl+d to come out of the command)
```
> cat >> $file_name # This appends the text at the end of the file
> cat > $file_name # This will overwrite the contents in the file
```
- Print the contents of a file
```
> cat test
> cat -n test # shows line numbers
> cat file1.txt > file2.txt # copy the contents of file1.txt to file2.txt
```
- Print the contents of a file in reverse order
```
> tac test
```
- Display large files (screenful display)
    - Navigate:
        * ENTER key     -   To scroll down page by line
        * Space bar     -   To move to the next page
        * b key         -   To move to the previous page
        * / key         -   To search the string
```
> more test
```
- Display the contents of a file or command output one page at a time
```
> less test
```
- Display 1st 10 lines of a file
```
> head test
# use the -n option to display more lines
```
- Display last 10 lines of a file
```
> tail test
# use the -n option to display more lines
```
- To fetch the manual of a command
```
> man cat
```
- Pipe operator
```
# Whatever is at the left hand side of the pipe will be treated as the input for the command on the right hand side of the pipe.
# This means, <echo "20.5+5"> is treated as input for bc command.
echo "20.5+5" | bc
```
- Exit the shell script
```
> exit
```
- Remove a file or directory
```
> rm file_path
> rm -f file_path # forcefully remove a file
> rm -r dir_path # recursively remove an empty directory
> rm -rf file_path # recursively forcefully remove directory with contents 
```
- display the username of the current user
```
> whoami
```
- copy files and directories
```
> cp file file_backup
# to copy a directory, including all its files and subdirectories, use any of the below flags:
# -r
# -R
```
- Move files and directories
```
> mv new_file.txt file.txt
# This can be used to rename files or directories too
```
- locate the executable files or location of a program from the file system.
```
> which nano
```
- Set aliases to most used commands
```
> alias wr="cd /scripts"
```
- All the linux commands used in the past in the current terminal session
```
> history
```
- Search a file by file name in the database
```
> locate file_name
# it faster then find command
# add -i to make the search case in-sensitive
# To search a file that contains two or more words, use asterisk (*)

> find ./scripts -name *.txt
# use the findcommand to locate files within a given directory.
```
- Search content from a file or command output
```
> history | grep which
# This will search for all which contents from the history command output
# The history command output is passed to the "grep which" command as argument because of the pipe.
```

# More Commands
## Time and Date commands
- Show current date and time
```
> date
``` 
- Wait for a given number of seconds before execute
```
> sleep 10 # wait for 10 seconds
```
- Find out how long the system has been up
```
> uptime
```

## Unix System status commands
- Show or set server hostname
```
> hostname
```
- Display system load, who's logged in and what they are doing
```
> w
```
- Pring Unix system information
```
> uname
```

## Networking commands
- Show and set IP address
```
> ifconfig
> ip # this is only available in recent Linux versions
```
- Check if remote host is reachable via ICMP ping
```
> ping
```
- Show network stats and routing information
```
> netstat
```

## Remote access commands
- clear-text (insecure) remote access protocol. To see the connectivity from server to server.
```
# telnet ip port
> telnet 192.168.1.1 22
```
- Secure Shell : This Command will use to connect encrypted remote access client.
```
# ssh remote_user@remote_Ip
> ssh hdfs@192.168.1.1
```

## File transfer commands
- File transfer protocol client
```
> ftp [options] [IP]
```
- Secure ftp
```
> sftp /user/rahul/testfile.txt hdfs@192.168.1.1
```
- Secure copy protocol: This is secure (encrypted) version if cp command. Which Transfer file to secure servers.
```
# scp /source_file_Path destination_user@destination_IP/Destination
> scp /user/rahul/testfile.txt hdfs@192.168.1.1
```
- Download files from remote servers, HTTP/HTTPS and FTP.
```
> wget http://apt.typesafe.com/repo-deb-build-0002.deb
```

## Process commands
- Terminologies
```
PID     -   The process ID of each task
User    -   The username of the task owner
PR      -   Can be 20(highest) or -20(lowest)
NI      -   The nice value of a task
VIRT    -   Virtual memory used (kb)
RES     -   Physical memory used (kb)
SHR     -   Shared memory used (kb)
S       -   Status
%CPU    -   % of CPU time
%MEM    -   Physical memory used
TIME+   -   Total CPU time
Command -   Command name
```
    - Five status types
    ```
    'D' -   uninterruptible sleep
    'R' -   running
    'S' -   sleeping
    'T' -   traced or stopped
    'z' -   zombie
    ```
- Commands:
```
bg          -   To send a process to the background
fg          -   To run a stopped process in the foreground
top         -   Details on all Active Processes
ps          -   Give status of processes running for a user
ps PID      -   Gives the status of a particular process
pidof       -   Gives the Process ID (PID) of a process
kill PID    -   Kills a process
nice        -   Starts a process with a given priority
renice      -   Changes priority of an already running process
df          -   Gives free hard disk space on your system
free        -   Gives free RAM on your system
```

## Networking commands
```
ifconfig        -   Display and manipulate route and network interfaces.
ip              -   It is a replacement of ifconfig command.
traceroute      -   Network troubleshooting utility.
tracepath       -   Similar to traceroute but doesn't require root privileges.
ping            -   To check connectivity between two nodes.
netstat         -   Display connection information.
ss              -   It is a replacement of netstat.
dig             -   Query DNS related information.
nslookup        -   Find DNS related query.
route           -   Shows and manipulate IP routing table.
host            -   Performs DNS lookups.
arp             -   View or add contents of the kernel's ARP table.
iwconfig        -   Used to configure wireless network interface.
hostname        -   To identify a network name.
curl or wget    -   To download a file from internet.
mtr             -   Combines ping and tracepath into a single command.
whois           -   Will tell you about the website's whois.
ifplugstatus    -   Tells whether a cable is plugged in or not.

```