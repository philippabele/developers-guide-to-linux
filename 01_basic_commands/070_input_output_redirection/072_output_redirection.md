### Output Redirection
In this chapter the functionality of output redirection will be discussed

#### Ouput Redirection Overwriting
To redirect the output into a file the operator `>` is used. Using `>` will overwrite the contents of the destination file given.
In the example the output of the command `ls -la` will be written into the file *ls-output*

~~~~
ls -la > output
~~~~

Now we use the command `cat` to view the content of the file. Cat takes a file as an argument and displays its contents to the command line.
We won't see an output on the command line, but the file now looks something like this:

~~~~
drwxr-xr-x 4 dummy dummy 4096 Jan 25 10:38 .
drwxr-xr-x 5 dummy dummy 4096 Jan 25 10:37 ..
drwxr-xr-x 8 dummy dummy 4096 Jan 25 10:54 .git
-rw-r--r-- 1 dummy dummy   17 Jan 25 10:38 .gitignore
drwxr-xr-x 5 dummy dummy 4096 Jan 25 10:42 01_basic_commands
-rw-r--r-- 1 dummy dummy 1070 Jan 25 10:37 LICENSE
-rw-r--r-- 1 dummy dummy 3605 Jan 25 10:38 README.md
~~~~


#### Output Redirection Appending

By using the `>>` operator output will be appended to the specified file if we repeat the above example our file should look like this:

~~~~
drwxr-xr-x 4 dummy dummy 4096 Jan 25 10:38 .
drwxr-xr-x 5 dummy dummy 4096 Jan 25 10:37 ..
drwxr-xr-x 8 dummy dummy 4096 Jan 25 10:54 .git
-rw-r--r-- 1 dummy dummy   17 Jan 25 10:38 .gitignore
drwxr-xr-x 5 dummy dummy 4096 Jan 25 10:42 01_basic_commands
-rw-r--r-- 1 dummy dummy 1070 Jan 25 10:37 LICENSE
-rw-r--r-- 1 dummy dummy 3605 Jan 25 10:38 README.md
drwxr-xr-x 4 dummy dummy 4096 Jan 25 10:38 .
drwxr-xr-x 5 dummy dummy 4096 Jan 25 10:37 ..
drwxr-xr-x 8 dummy dummy 4096 Jan 25 10:54 .git
-rw-r--r-- 1 dummy dummy   17 Jan 25 10:38 .gitignore
drwxr-xr-x 5 dummy dummy 4096 Jan 25 10:42 01_basic_commands
-rw-r--r-- 1 dummy dummy 1070 Jan 25 10:37 LICENSE
-rw-r--r-- 1 dummy dummy 3605 Jan 25 10:38 README.md
~~~~

#### Error Redirection

The standard error can be redirected with `2>`/`2>>`. In the example it is tried to list the content of a restricted folder resulting in an error.

~~~~
ls /root > output
~~~~

Again we won't see an output, but our file will look like this:

~~~~
ls: cannot open directory '/root': Permission denied
~~~~

#### Redirect Both Outputs

To redirect bot outputs the `&>`/`&>>` operators can be used.

#### Exercise
Experiment with output redirection to see how it works. For example use `echo foo > output` to write foo to the file output and overwrite or append content.
