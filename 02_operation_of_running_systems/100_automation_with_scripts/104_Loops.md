# Loops

## for
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

## while

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
## until
Until loops till a value isn't satisfied anymore. It can be compared to a negative while loop `while [ !0 ]` is the same as `until[ 0 ]`.

## Exercise
To put the learned together, write a script, which endlessly loops and echoes 'Too much files in here!' in case there are 5 or more files in the directory it is executed in. **Hint:** Combine the `ls` and `wc` commands to get the count of files.