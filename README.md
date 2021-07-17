<h1>Bash</h1>

<p align="center">
<img src="https://user-images.githubusercontent.com/31994778/126025527-aa892efd-88e1-46b7-b149-39f3b942bd4c.png">
  </p>

---

<b><i>"Bash is a command line language that is used on UNIX based operating systems, i.e., Mac & Linux."</b></i>

<b>Knowing bash is very important for developers since most of the cloud based operations, such as deployment, are done on a linux environment where bash scripting is used.</b>
  
<b>Table Of Contents</b> |
------------ | 
[Introduction to Bash Scripting](#intro)
[cat](#cat)
[Running Shell Scripts](#running-shell-scripts)
[comments](#comments)
[Conditional Statements](#conditional-statements)
[Loops](#loops)
[Exit Status](#exit)

<div id="intro">
<h2>Introduction to Bash Scripting</h2>
  
  <p align="center">
   <img width="450" alt="Screen Shot 2021-07-17 at 7 42 40 AM" src="https://user-images.githubusercontent.com/31994778/126025819-d4b789f5-375a-483b-b892-02abfb31e73d.png">
  </p>
  
  Bash is prolifically used by developers and dev-ops engineers in order to manage operations in Linux environments. In 2021, cloud computing is based on Linux and knowing bash will help immensely in cloud based operations, such as deployment, data storage, environment preparation for development and test, automatization of tasks.
  
  <p align="center">
<img width="450" src="https://user-images.githubusercontent.com/31994778/126025936-3152fd97-23ce-457f-920c-62dd8945a905.png">
 </p>
  
  <div id="cat">
  <h2>cat</h2>
  </div>
  
  <b><i>"`cat` is a very useful command. It does things such as:</b></i>
  
  1- Appending one file's content to another file
  2- Replacing one file's content with another file's content
  3- View what's written inside a file
  
  <h3>Appending to Another File</h3>
  
  Say that I just created `file1.txt` and `file2.txt` on the commandline with the following snippet:
  
  ```bash
⬢  Desktop  touch file1.txt
⬢  Desktop  touch file2.txt
⬢  Desktop  nano file1.txt 
⬢  Desktop  cat file1.txt 
Hello, this is file1
⬢  Desktop  nano file2.txt
⬢  Desktop  cat file2.txt 
Hello, this is file2
⬢  Desktop  
```
  
  If I want to append the content of file1.txt to file2.txt, I simply do:
  
  <p align="center">
  <img width="450" alt="Screen Shot 2021-07-17 at 8 20 46 AM" src="https://user-images.githubusercontent.com/31994778/126026701-1d271f06-0605-4970-a7ac-e23af78781fd.png">
  </p>
  
  The key is to use `>>` operator here.. 
  
  <h3>Replacing Other File's Content</h3>
  
  Going back to the previous example, say that we want to replace file2.txt content with file1.txt content...
  
<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 8 22 29 AM" src="https://user-images.githubusercontent.com/31994778/126026747-3eb2f968-96c1-4f3a-a410-5ffd1687d676.png">
</p>
  
  <h3>Reading Files</h3>
  
  As we have done in the previous two examples, to read inside the file, we can simply do:
  
  `cat -n FileName`
  
  Here, `-n` flag shows lines numerically.
  
  <p align="center">
  <img width="450" alt="Screen Shot 2021-07-17 at 8 20 46 AM" src="https://user-images.githubusercontent.com/31994778/126026701-1d271f06-0605-4970-a7ac-e23af78781fd.png">
  </p>
  
  <h4>Reading Multiple Files</h4>
  
  Multiple files can be read with the following syntax:
  
  `cat -e File1 File2`
  
  Here, `-e` flag separates each file's last line with a `$` sign.
  
<p align="center">
  <img width="450" alt="Screen Shot 2021-07-17 at 8 34 20 AM" src="https://user-images.githubusercontent.com/31994778/126026997-59ff49cd-22e4-4d8f-a02b-0166e6019c22.png">
  </p>
  
  ---
  
  <div id="running-shell-scripts">
  <h2>Running Shell Scripts</h2>
  </div>
  
  <b><i>"To run shell scripts, either use `./` or `sh`."</b></i>
  
  Let's say I have a file `file3.txt`
  
```bash
  echo "This is the content inside file3"
```
  
  To execute:
  
  Either 
  
  ```bash 
  sh file3.txt 
  ```
  
  or
  
  ```bash
  ./file3.txt 
  ```

  both result in 
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 8 43 59 AM" src="https://user-images.githubusercontent.com/31994778/126027228-aef3316b-c1d0-41d9-b1bc-e135f333ebc5.png">
  </p>
  
  <h3>Executing a file that creates another file</h3>
  
  Say that I have file3.txt as follows:
  
```bash
touch file4.txt

echo "Written inside file4.txt from file3.txt" > file4.txt
```
  
  This file creates a new file called `file4.txt` and writes some text on it.
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 8 56 00 AM" src="https://user-images.githubusercontent.com/31994778/126027400-a4526441-64cf-4af5-945e-01d68d8ba559.png">
  </p>
  
  ---
  
  <div id="comments">
  <h2>comments</h2>
  </div>
  
<h3>Single line comment</h3>
  
  As we know from other programming languages, comments are not computed, they are there for simplifying the code.
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 9 09 13 AM" src="https://user-images.githubusercontent.com/31994778/126027759-dfd345eb-92da-4dc9-a256-0adb6a97abed.png">
  </p>
  
<h3>Multi line comment</h3>
  
  For multi-line comments, we use
  `: ' ......... '`
  
  ```bash
  : '
creates file

another comment

one more comment'

touch file4.txt

#writes on file
echo "Written inside file4.txt from file3.txt" > file4.txt
```
  
  ---
  
  <div id="conditional-statements">
  <h2>Conditional Statements</h2>
  </div>
  
  <h3>Operators</h3>
  
  <div align="center">
    
  <b>Operator</b> | <b>Description</b>
------------ | ------------ 
-eq | Returns true if two numbers are equal
-lt | Returns true if a number is less than the other
-gt | Returns true if a number is greater than the other
== | Returns true if two strings are equal
!= | Returns true if two strings are not equal
! | Returns true if the expression is falsy
-d | Check the existence of a directory
-e | Check the existence of a file
-r | Check the existence of a file and read permission
-w | Check the existence of a file and write permission
-x | Check the existence of a file and execute permission
  </div>
  
  <h3>Syntax</h3>
  
  ```bash
  if [ condition ] ; then
  
  Command(s)
  
  fi
  ```

We can also use `(( ))` instead of `[ ]`. For example,

```bash
if (( condition )) ; then
  
  Command(s)
  
  fi
```
  
  say that we have the following snippet:
  
  ```bash
  printf "Enter a number:"

read n

if [ $n -lt 100 ]; then
printf "$n is less than 100\n"

elif [ $n -gt 100 ]; then
printf "$n is greater than 100\n"

else
printf "$n is equal to 100\n"
fi
  ```
  
  <p align="center">
  <img width="450" alt="Screen Shot 2021-07-17 at 10 08 53 AM" src="https://user-images.githubusercontent.com/31994778/126029154-08a67c92-5481-452f-90e1-57732dbb1855.png">
  </p>
  
  <h3>Multiple Conditions</h3>
  
  <b>Syntax</b>:
  
  ```bash
  printf "Enter username:"
read un
printf "\n"

printf "Enter password:"
read pwd

if [[ "$un" == "admin" && "$pwd" == "superuser" ]]; then
printf "Login successful\n"

else
printf "Login failed\n"
fi
```
  
  Here, we check both username and password.
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 10 40 10 AM" src="https://user-images.githubusercontent.com/31994778/126029971-bbc1070a-ccc0-4fec-91b6-9f64631a8b01.png">
  </p>
  
  <h3>|| Operator</h3>
  
  This is `OR` operator.
  
  ```bash
  printf "Enter your name:"
read name

if [[ $name == "burak" || $name == "batu" ]]; then
	printf "Your name is either burak or batu..\n"

else
	printf "I can't guess your name...\n"

fi
```
  
  sh it
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 10 50 39 AM" src="https://user-images.githubusercontent.com/31994778/126030206-5b2eaae2-64ac-4d4e-88a0-32436d437828.png">
  </p>
  
  <h3>Nested IF</h3>
  
  <b>Syntax</b>
  
  ```bash
if [ condition ]; then
	# some code here
	if [ condition ]; then
		# some code here
	fi
fi

  ```
  
    <h3>Case</h3>
  
  <b>Syntax</b>
  
  ```bash
  case  in
pattern 1) commands;;
pattern n) commands;;
esac
  ```
  
  Example:
  
  ```bash
  N1=$1
op=$2
N2=$3

result=0

case $op in
	'+')
((result=$N1 + $N2)) ;;
'x')
((result=$N1 * N2)) ;;
'-')
((result = $N1 - $N2)) ;;
'/')
((result = $N1 / $N2)) ;;
*)
echo "Something went wrong..."
exit 0 ;;
esac

echo "result: $result"
```
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 11 28 34 AM" src="https://user-images.githubusercontent.com/31994778/126031146-55122ea5-0345-4def-9b1e-6da077567339.png">
  </p>
  
  <h3>Case Statement with a Range of Values</h3>
  
  ```bash
  name=$1
mark=$2

case $mark in
	9[0-9]|100)
grade='A';;
8[0-9])
grade='B';;
7[0-9])
grade=C;;
6[0-9]|5[0-9]|4[0-9]|3[0-9]|2[0-9]|1[0-9]|0)
grade='F';;
*)
echo "something went wrong"
exit 0;;
esac

echo "grade: $grade"
  ```
  
  <p align="center">
    <img width="450" alt="Screen Shot 2021-07-17 at 11 55 09 AM" src="https://user-images.githubusercontent.com/31994778/126031892-7aa926a5-4bd6-4eb3-bde5-fc457c8ac2b3.png">
  </p>
  
  ---
	
<div id="loops">
	
 <h2>Loops</h2>  
	
</div>

<h3>While</h3>
	
	
<b>Syntax</b>
	
	
```bash
while [ condition ]
do
	#Do something
done
```

Example:
	
```bash
number=1

while [ $number -lt 10 ]
do
	echo "$number"
	number=$((number+1))
done
```
	
<p align="center">
	<img width="450" alt="Screen Shot 2021-07-17 at 2 03 22 PM" src="https://user-images.githubusercontent.com/31994778/126034905-3b832e75-000a-4374-a222-1f388e8d1c50.png">
	</p>

---
	
<div id="exit">
<h2>Exit Status</h2>
</div>

<b><i>"When a bash command is executed, it leaves behind the exit code, irrespective of successful or unsuccessful execution. Examining the exit code can offer useful insight into the behavior of the last-run command."</b></i>
	
```
Every UNIX/Linux command executed by the shell script or user leaves an exit status.
	
It’s an integer number that remains unchanged unless the next command is run.

If the exit code is 0, then the command was successful. If the exit code is non-zero (1-255),
	
then it signifies an error.
```

In the case of bash, the exit code of the previous command is accessible using the shell variable “$?”.

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 2 18 18 PM" src="https://user-images.githubusercontent.com/31994778/126035222-2dc7bfd5-772e-4105-b1c5-40aea026fa68.png">	
</p>
	
  <div align="center">
    
  <b>Summary</b> | 
------------ |
1- Every Linux or Unix command executed by the shell script or user, has an exit status.
2- The exit status is an integer number.
3- For the bash shell’s purposes, a command which exits with a zero (0) exit status has succeeded.
4- A non-zero (1-255) exit status indicates failure.
5- If a command is not found, the child process created to execute it returns a status of 127. If a command is found but is not executable, the return status is 126.
6- All of the Bash builtins return exit status of zero if they succeed and a non-zero status on failure.
  </div>
	
Example:
	
```bash
# Analyzes whether the run command 
# executed successfully or not

adasads

status=$?

if [ $status -eq 0 ] ; then
	echo "Command executed successfully..."
else
	echo "Command failed to execute..."
fi
```
<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 2 34 17 PM" src="https://user-images.githubusercontent.com/31994778/126035560-b8eeb3c0-0368-46e2-aef6-d0d7f5882e16.png">
</p>
	
	
