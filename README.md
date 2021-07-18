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
[Script Input](#script-input)
[Script Output](#script-output)
[Pipes](#pipes)
[Strings](#strings)
[Numbers](#numbers)
[Declare Command](#declare)
[Arrays](#arrays)
[Functions](#functions)

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
	
<h3>For</h3>

For loop has two syntaxes

1- 

```bash
	
for (( expr1 ; expr2 ; expr3 )) ; do commands ; done
	
```
	
2- 

```bash
	
for name [ [in [words …] ] ; ] do commands; done
	
```

Example:
	
```bash
for (( n=0; n<5; n++ )); do
	echo "$n"
done
```
		 
```bash
for i in 1 2 3 4 5; do
	echo ${i}
done
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 5 56 52 PM" src="https://user-images.githubusercontent.com/31994778/126040881-5e0dc28c-76bd-4b8f-a437-d827d5167d0c.png">
</p>

```bash
for i in {0..20}; do
	echo ${i}
done
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 6 17 00 PM" src="https://user-images.githubusercontent.com/31994778/126041477-40d79005-2522-4899-be01-6c73671ddbfc.png">
</p>

<b>Syntax</b>

```bash
for i in {start..stop..step}; do
	echo ${i}
done
```

<h3>Until</h3>

Very similar to While

```bash
let n=0

until [ "$n" -eq 5 ]; do
    echo $n
    ((++n))
done
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 3 03 52 PM" src="https://user-images.githubusercontent.com/31994778/126036284-8c3825b1-a7fc-4943-bf44-e0543ce972ab.png">
</p>


<h3>Break</h3>

```bash
numbers=(1 2 4 8 16 32 64 128)

for t in ${numbers[@]}; do
    if [ $t -eq 64 ]; then
    	echo "Broke out!"
        break
    fi
    echo "Number: " + $t
done
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 6 07 08 PM" src="https://user-images.githubusercontent.com/31994778/126041160-c84e1e7b-d0c0-45cd-848a-705c7c44aaf0.png">

</p>

<h3>Continue</h3>

```bash
numbers=(1 2 4 8 16 32 64 128)

for t in ${numbers[@]}; do
    if [ $t -eq 64 ]; then
    	echo "skipping 64!"
        continue
    fi
    echo "Number: " + $t
done
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 6 08 22 PM" src="https://user-images.githubusercontent.com/31994778/126041201-c7a4ec09-1745-49f9-bd0e-a1c458fce32d.png">
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
	
	
---

<div id="script-input">
<h2>Script Input</h2>
</div>

```bash
echo $1 $2 $3
```
<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 17 05 PM" src="https://user-images.githubusercontent.com/31994778/126043237-68f562e1-239b-472a-a400-932aadd9c4a7.png">
</p>

<h3>$@</h3>

Can take unlimited args

```bash
args=($@)

echo $@
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 17 05 PM" src="https://user-images.githubusercontent.com/31994778/126043280-87460544-4e95-42c8-bca9-41b0844e390b.png">
</p>

```bash
args=($@)

echo ${args[0]} ${args[1]} ${args[2]}
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 17 05 PM" src="https://user-images.githubusercontent.com/31994778/126043445-a9ee4366-3f8c-49b1-96fd-a9b68549bce0.png">
</p>

```bash
args=($@)

echo $@
echo $#
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 29 27 PM" src="https://user-images.githubusercontent.com/31994778/126043557-eeebe620-7a18-46bd-9aba-bf09825a6694.png">
</p>

<h3>Reading a File With STDIN</h3>

```bash
while read line; do
	echo "$line"
done < ${1:-/dev/stdin}
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 38 02 PM" src="https://user-images.githubusercontent.com/31994778/126043790-80c96558-7061-40a4-a573-e5f10520cbdc.png">
</p>

---

<div id="script-output">
<h2>Script Output</h2>
</div>

<h3>Redirecting Output to a File</h3>

```bash
ls -la > file1.txt
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 54 22 PM" src="https://user-images.githubusercontent.com/31994778/126044274-68d72b80-423a-460f-8bd5-690118d79dd1.png">
</p>

<h3>Filtering and Redirecting STDOUT and STDERR</h3>

```bash
ls +la 1>file1.txt 2>file2.txt
```

This means that redirect STDOUT to file1.txt and redirect STDERR to file2.txt

Since `ls +a` doesn't exist, it will redirect STDERR to file2.txt and redirect nothing to file1.txt

<p align="center">
<img width="450" alt="Screen Shot 2021-07-17 at 7 59 54 PM" src="https://user-images.githubusercontent.com/31994778/126044412-8599ef62-2f54-4670-9a22-8a30aeba4fbc.png">
</p>

<h3>Redirecting STDOUT and STDERR to the Same File</h3>

```bash
ls -al >& file1.txt
```

Redirects both STDOUT and STDERR to file1.txt

---

<div id="pipes">
<h2>Pipes</h2>
</div>

What is meant by "Pipes" is using a variable of one .sh file inside another .sh file.

In other words, injecting variable(s) from one .sh file to another.

Let's create two files, `file1.sh` and `file2.sh`

file1.sh

```bash
MESSAGE="This message is injected inside file2.sh"

export MESSAGE
./file2.sh
```

file2.sh

```bash
echo "$MESSAGE"
```

Run `sh file1.sh`

<p align="center">
<img width="450" alt="Screen Shot 2021-07-18 at 8 43 05 AM" src="https://user-images.githubusercontent.com/31994778/126057075-e974218c-3690-47a7-b054-6fa596fe085d.png">
</p>

`NOTE:` when we want to run this file with `./file1.sh` we will get "permission denied" message. To fix it, we run `chmod +x file1.sh`.

<p align="center">
<img width="450" alt="Screen Shot 2021-07-18 at 8 47 06 AM" src="https://user-images.githubusercontent.com/31994778/126057145-c94c0e9b-a3c3-4bf0-a15f-eb57c296b950.png">
</p>

---

<div id="strings">
<h2>Strings</h2>
</div>

<h3>Concatenate Strings</h3>

<h4>Direct Concatenation</h4>

```bash
stringOne="Hello"
stringTwo="World"
stringThree=${stringOne}" "${stringTwo}

echo $stringThree
```

Prints

```bash
⬢  Desktop  sh concatenate.sh 
Hello World
```

<h4>Concatenating Through Array</h4>

```bash
stringOne="Hello"
stringTwo="World"

stringThree=(${stringOne} ${stringTwo});

echo ${stringThree[@]}
```

Prints

```bash
⬢  Desktop  sh concatenate.sh 
Hello World
```

<h3>Slicing Strings</h3>

<h4>Syntax</h4>

```bash
string:$[integer]
```

Returns string content starting from "integer" until end.

```bash
string="Hello World"
  
slicedString=${string:$[5]}

echo $slicedString
```

Prints `World`

<h4>Slicing with Negative Number</h4>

We can also slice a string with a negative number. For example `${string:$[-${#string}]}` would return the whole string..

```bash
string="Hello World"
  
slicedString=${string:$[-${#string}]}

echo $slicedString
```

Prints `Hello World`

<h3>Slicing From Anywhere</h3>

<h4>Syntax</h4>

`${string:startVal:endVal}`

```bash
string="Hello World"
  
slicedString=${string:0:5}

echo $slicedString
```

Prints `Hello`

Note that endVal is not included. Think of it as [startVal:endVal).

<h3>Shifting Strings</h3>

```bash
string="abcdefghijklmnopqrstuvwxyz"

for i in $(seq 0 $(( ${#string} - 1 )));
do
echo ${string:$[-i]}
done

for i in $(seq 0 $(( ${#string} - 1 )));
do
echo ${string:$[i]}
done
```

```
z
yz
xyz
wxyz
vwxyz
uvwxyz
tuvwxyz
stuvwxyz
rstuvwxyz
qrstuvwxyz
pqrstuvwxyz
opqrstuvwxyz
nopqrstuvwxyz
mnopqrstuvwxyz
lmnopqrstuvwxyz
klmnopqrstuvwxyz
jklmnopqrstuvwxyz
ijklmnopqrstuvwxyz
hijklmnopqrstuvwxyz
ghijklmnopqrstuvwxyz
fghijklmnopqrstuvwxyz
efghijklmnopqrstuvwxyz
defghijklmnopqrstuvwxyz
cdefghijklmnopqrstuvwxyz
bcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
bcdefghijklmnopqrstuvwxyz
cdefghijklmnopqrstuvwxyz
defghijklmnopqrstuvwxyz
efghijklmnopqrstuvwxyz
fghijklmnopqrstuvwxyz
ghijklmnopqrstuvwxyz
hijklmnopqrstuvwxyz
ijklmnopqrstuvwxyz
jklmnopqrstuvwxyz
klmnopqrstuvwxyz
lmnopqrstuvwxyz
mnopqrstuvwxyz
nopqrstuvwxyz
opqrstuvwxyz
pqrstuvwxyz
qrstuvwxyz
rstuvwxyz
stuvwxyz
tuvwxyz
uvwxyz
vwxyz
wxyz
xyz
yz
z
```

<h3>Transforming Uppercase</h3>

<h4>Syntax</h4>

```bash
${string^^}
```

This syntax makes all letters upper-case

```bash
string="Hello World"

echo ${string^^} # HELLO WORLD
```

<h3>Transforming Lowercase</h3>

<h4>Syntax</h4>

```bash
${string,,}
```

This syntax makes all letters lower-case

```bash
string="HELLO WORLD"

echo ${string,,} # hello world
```

---

<div id="numbers">
<h2>Numbers</h2>
</div>

In bash, we cannot add two numbers in their raw form, e.g.,

```bash
echo 31+21 # 31+21
```

As you see, it prints `31+21`. To actually print calculated version, we need to do

```bash
echo $((31+21)) # 52
```

We can do division, subtraction, addition, multiplication, remainder.

We can also use the following syntax

```bash
echo $(expr 31 + 21 ) # 52
```

`NOTE:` We need to use escape character for multiplication, e.g.,

```bash
echo $(expr 31 \* 21 ) # 651
```

<h3>Converting HEX to Decimal</h3>

```bash
echo "Please enter a HEX number:"

read number

echo -n "The decimal value of $number is: "

echo "obase=10; ibase=16; $number" | bc
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-18 at 5 23 33 PM" src="https://user-images.githubusercontent.com/31994778/126070858-607c7d87-ab51-4f9a-830e-0c1d107fd28d.png">
</p>

Here, bc is the built in calculator.

<b><i>"Linux or Unix operating system provides the bc command and expr command for doing arithmetic calculations."</i></b>

<b><i>"ibase and obase define the conversion base for input and output numbers. The default for both input and output is base 10."</i></b>

With this information, let's convert decimal to binary...

```bash
echo "Please enter a Decimal number:"

read number

echo -n "The decimal value of $number is: "

echo "obase=2; $number" | bc
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-18 at 5 36 30 PM" src="https://user-images.githubusercontent.com/31994778/126071318-c75b586b-7971-4ab7-884b-5b2353871b73.png">
</p>

Here, I didn't write `ibase=10;` since both obase and ibase are 10 by default.

---

<div id="declare">
<h2>Declare Command</h2>
</div>

In my opinion, declare command is not very useful except for declaring immutable variables.

For example:

```bash
declare -r myImmutableVar=11

echo $myImmutableVar

myImmutableVar=12

echo $myImmutableVar
```
<p align="center">
<img width="450" alt="Screen Shot 2021-07-18 at 6 18 45 PM" src="https://user-images.githubusercontent.com/31994778/126072618-7af4455e-1929-48f6-934d-4edf9ed772df.png">
</p>

In the case below, it might be pretty useful

```bash
declare -r filePath=/etc/dev

echo $filePath

filePath=/etc/bin

echo $filePath
```

<p align="center">
<img width="450" alt="Screen Shot 2021-07-18 at 6 20 24 PM" src="https://user-images.githubusercontent.com/31994778/126072688-d638133b-5482-4902-8280-987c32ea9b85.png">
</p>

---

<div id="arrays">
<h2>Arrays</h2>
</div>

```bash
cars=("BMW" "TOYOTA" "HONDA")

echo "${cars[@]}" # BMW TOYOTA HONDA

echo "${cars[0]}" # BMW

echo "${!cars[@]}" # 0 1 2

echo "${#cars}" # 3
```

`!` prints indexes, `#` prints length, `@` is used to print every element in the array.

<h3>Delete Array Element with Unset</h3>

```bash
cars=("BMW" "TOYOTA" "HONDA")

# Find "HONDA" and delete it from the array
for (( i=0; i<$((${#cars})); ++i )); do
	# echo ${cars[0]}
    if [ ${cars[i]} == "HONDA" ]    	
    then
        unset cars[i]
    fi
done

    echo ${cars[@]}
```

Prints

```
BMW TOYOTA
```

<h3>Adding Element to the Array</h3>

```bash
cars=("BMW" "TOYOTA" "HONDA")

# Find "HONDA" and change it with "MAZDA"
for (( i=0; i<$((${#cars})); ++i )); do
	# echo ${cars[0]}
    if [ ${cars[i]} == "HONDA" ]    	
    then
        unset cars[i]
	cars[i]="MAZDA"
    fi
done

    echo ${cars[@]}
```

Prints

```
BMW TOYOTA MAZDA
```

<h3>Appending an Element to an Array</h3>

<h4>Syntax</h4>

```bash
array+=(elementToBeAdded)
```

```bash
arr=('HONDA' 'MAZDA' 'SUBARU')

echo ${arr[@]}

arr+=('BMW')

echo ${arr[@]}
```

Prints

```
HONDA MAZDA SUBARU
HONDA MAZDA SUBARU BMW
```

---

<div id="functions">
<h2>Functions</h2>
</div>
