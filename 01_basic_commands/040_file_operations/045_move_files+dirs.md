# Moving Files and Directories
This Topic is dealt with in Chapter **4 - cp** of The Linux Command Line.

## The `mv` command

The `mv` command is used to move or rename files and directories.
Its Usage is very similar to the `cp` commands. It shares the useful switches mentioned in **Copying Files and Directories**. Its also possible to define multiple files and dirs to be copied `mv <src1> <src2> ... <dest>` 
To rename a file simply move it on the same 'level':

~~~~~bash
mv a b
~~~~~

This changes the filename from *a* to *b*

To move a file or directory to an other place give the new place as last parameter

~~~~~bash
mv a somedir/
~~~~~

This moves a to the subfolder *somedir*

## Exercise
Execute the *020_testenv.sh* script.
Make use of one of the useful switches and move the file *somedir/writeprotected* to *someotherdir*, but only if it is newer than the file *someotherdir/writeprotected*
