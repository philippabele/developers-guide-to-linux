## Copying Files and Directories
This Topic is dealt with in Chapter **4 - cp** of The Linux Command Line.

### The `cp` command

The `cp` command is used to copy files and directories (`-r` switch has to be set)
Its usage is `cp <src> <dest>`, multiple source files can be given like `cp <src1> <src2> ... <dest>`
To copy file *a* to location *b* use:

~~~~
cp a b
~~~~

As a result the file *a* will be copied to file *b*

To copy a whole folder use the `-r` switch just like in the `rm` command.

~~~~
cp -r somefolder someotherfolder
~~~~

### Exercise
Execute the *020_testenv.sh* script. Write a script to copy the file *somedir/writeprotected* to be next to *somedir* (same folder level) with the filename *writeprotected.bak*. And create a copy of *somedir* (*somedir.bak*)

### Useful switches
- `-i` To avoid overwriting ask for confirmation
- `-u` Update, does not copy if destination file is same or newer
