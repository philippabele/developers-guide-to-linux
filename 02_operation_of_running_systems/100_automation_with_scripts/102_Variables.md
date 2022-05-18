### Variables
Variables are created and set by defining its name and assigning it a value:
Note that no spaces are allowed before and after the equal sign.

~~~~~ bash
variablename="variablevalue"
~~~~~
Variables types can be:

- Strings - as shown above
- Characters - 'c'
- Numbers - 42

To access the value of a set variable put the `$` sign in front of it:

~~~~~ bash
echo $variablename
~~~~~

The result of a function call can be assigned to a variable by putting the call in braces preceded by a `$` sign:

~~~~~ bash
var=$(echo foo)
echo $var
~~~~~

#### Arrays
Arrays can be created by putting values in braces:

~~~~~ bash
int_array = (1 2 3 4)
~~~~~

Specific values can be set by referencing them by their index:

~~~~~ bash
int_array[1] = 10
~~~~~

The values can be accessed by putting the variable and the whished index into curly braces:

~~~~~ bash
echo ${int_array[1]} # will output 10
~~~~~

#### Exercise
Write a script, which saves the count of files in the current directory into the variable `fileCount` and print the variable to the terminal.