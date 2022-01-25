# Introduction Input/Output Redirection
In this section input/output (I/O) redirection will be explained.

## Standard Input, Output, Error
Standard output (stdout) and standard error (stderr) follow the Unix philosophy of everything is a file. If a program on the command line needs to output its result it writes them to the *stdout* file, status messages like errors are written into the *stderr* file.
Programs often grab their inputs from the standard input file (stdin), this is by default connected to the keyboard.
Which files are used for standard input, output, error can be altered via Input/Output Redirection.