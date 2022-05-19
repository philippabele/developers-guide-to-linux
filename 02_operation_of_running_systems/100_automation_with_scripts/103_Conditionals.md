## Conditionals
Conditionals can be used to execute tasks if a condition is met. A conditional block is started with `if` and closed with `fi`. 

~~~~
var=5
if [ var = 5 ]
then
    echo var is 5
else
    echo var is not 5
fi
~~~~

An overview of bash test and conditional operators, which can be used for conditionals can be found on [this cheatsheet](https://kapeli.com/cheat_sheets/Bash_Test_Operators.docset/Contents/Resources/Documents/index) and on the bash man page.

Examples for other binary operators that can be used in comparisons are:
- `-eq` - equal
- `-ne` - not equal
- `-le` - less or equal
- `-lt` - less than
- `-ge` - greater or equal
- `-gt` - greater than

### Exercise
Write a script, which checks the count of files in the folder it is executed and echoes 'Too much files!' if there are 5 or more files in the folder.
