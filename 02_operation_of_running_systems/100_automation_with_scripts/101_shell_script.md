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

``` bash
variablename="variablevalue"
```
Variables types can be:

- Strings - as shown above
- Characters - 'c'
- Numbers - 42

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

## Loops

### for
The for loop in bash can be used to iterate over arrays:

``` bash
for var in (1 2 3 4 5)
do 
    echo var
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

### until

