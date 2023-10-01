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
## Comparison operators:
- Integer comparison
```
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
```
- String comparison
```
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

# Commands

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
```
> ls -al
total 0
drwxrwxrwx 1 deepbaran deepbaran 4096 Sep 30 11:53 .
drwxrwxrwx 1 deepbaran deepbaran 4096 Sep 30 11:54 ..
-rwxrwxrwx 1 deepbaran deepbaran    0 Sep 30 11:53 01_hello.sh
```
- To add or remove execute permission to a file [x]
```
> chmod +x 01_hello.sh # Add execute permission
> chmod -x 01_hello.sh # remove execute permission
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
- Change directory
```
> cd dir
> cd ..
```
- Write text in a file (Type Ctrl+d to come out of the command)
```
cat >> $file_name # This appends the text at the end of the file
cat > $file_name # This will overwrite the contents in the file
```
- Print the contents of a file
```
> cat test
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
- Setting the language of the terminal to C (If regex does not work properly)
```
> LANG=C # "C" is the language/locale setting and encoding
```
- Exit the shell script
```
> exit
```
- Remove a file
```
> rm file_path
> rm -f file_path # forcefully remove a file
```
- Different ways to run a script in verbose debug mode

    - ```
      > bash -x ./script_name.sh
      ```
    - Use this at the top of the script "#! /bin/bash -x" instead of just "#! /bin/bash"
    - Add the line "set -x" at the top of the script. This activates debugging from the point it is written. To stop debugging add the line "set +x" at the point where you want to stop debugging.