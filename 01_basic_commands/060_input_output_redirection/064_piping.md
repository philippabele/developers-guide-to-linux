# Piping
Piping is a special variant of I/O redirection. It is used to use the output of one command as the input of an other.

To pipe the `|` operator is used.

```
ls | wc -w
```

The above example will give the output of `ls` to the command `wc -w`. `wc -w` counts the words in a given file. So by piping the output of `ls` into it sums up the count of words used as filenames in the current folder.

## Filters
Filters take the content as input, alter it and then output it. Following are some common filters:

- `sort`: will sort input alphanumerically 
- `uniq`: accepts sorted list and deleted duplicates
- `wc`: as seen above counts words in input 
- `grep`: as seen in Chapter Search for Files can be used to filter for expressions

The above commands/filters offer more functionality than the basic one described, see their man pages for more details.

## The `tee` Utility
`tee` reads the standard input and copies it to standard output and one or more specified files.

``` bash
ls | tee output | grep output
```

The above example will write the outputs of `ls` to the file *output* and then search the output of `ls` (forwarded by `tee`) for the word output.
If there is no file named *output* in the folder in which the command is executed it will have no output on the first run as the file *output* doesn't exist at first.

## Exercise
Count the occurances of the word foo in the file *054_exercise.txt* by using the commands `grep` and `wc` as well as piping.
If you are unsure about the usage of the commands look up their man pages.

