# Shell Scripts
This chapter is based on the chapter 11 of Linux - Rheinwerk Verlag.
Shell scripts make it possible to write down complex tasks into scripts. These scripts can be used to automate management and orchestration.

## Hello World!
Shell scripts typically start with a shebang or hashbang:

``` bash
#!/bin/bash
...
```
The shebang tells the calling shell which binary to execute the script with.
A script can contain all commands that can be executed by the shell by default. An exemplary script could look like this:

``` bash
#!/bin/bash

echo HelloWorld!
```

## Comments
Comments can be started with a `#`:

``` bash
# this is a comment
echo foo # this is a comment too
```
## Variables
Variables are created and set by defining its name and assigning it a value:
Note that no spaces are allowed before and after the equal sign.

``` bash
variablename="variablevalue"
```
Variables types can be:

- Strings - as shown above
- Characters - 'c'
- Numbers - 42

To access the value of a set variable put the `$` sign in front of it:

``` bash
echo $variablename
```

The result of a function call can be assigned to a variable by putting the call in braces preceded by a `$` sign:

``` bash
var=$(echo foo)
echo $var
```

### Arrays
Arrays can be created by putting values in braces:

``` bash
int_array = (1 2 3 4)
```

Specific values can be set by referencing them by their index:

``` bash
int_array[1] = 10
```

The values can be accessed by putting the variable and the whished index into curly braces:

``` bash
echo ${int_array[1]} # will output 10
```

## Conditionals
Conditionals can be used to execute tasks if a condition is met. A conditional block is started with `if` and closed with `fi`. 

``` bash
var=5
if [ var = 5 ]
then
    echo var is 5
else
    echo var is not 5
fi
```

An overview of bash test and conditional operators, which can be used for conditionals can be found on [this cheatsheet](https://kapeli.com/cheat_sheets/Bash_Test_Operators.docset/Contents/Resources/Documents/index) and on the bash man page.

Examples for other binary operators that can be used in comparisons are:
- `-eq` - equal
- `-ne` - not equal
- `-le` - less or equal
- `-lt` - less than
- `-ge` - greater or equal
- `-gt` - greater than

## Loops

### for
The for loop in bash can be used to iterate over arrays:

``` bash
for var in (1 2 3 4 5)
do 
    echo var
done
```

With for it is also possible to iterate over the files in directory:

``` bash
# This will print the filenames of all files in the current folder
for file in *.txt
    echo $datei
done
```

### while

The while loop can be used to execute code while a condition is satisfied:
``` bash
var=5
while [ var != 0 ]
do
    echo var
    var=var-1
done
# will print 5 to 1 to the terminal
```

An endless while loop can be created by taking `1` (true) as a condition or by replacing the condition with `:`, see below:

``` bash
while [ 1 ]
    echo foo
done
## is the same as
while :
    echo foo
done
```
### until
Until loops till a value isn't satisfied anymore. It can be compared to a negative while loop `while [ !0 ]` is the same as `until[ 0 ]`.

## Exercise
- Write a script, which endlessly loops and echoes 'Too much files in here!' in case there are 5 or more files in the directory it is executed in. **Hint:** Combine the `ls` and `wc` commands to get the count of files.
- Read the bash documentation to learn more.
