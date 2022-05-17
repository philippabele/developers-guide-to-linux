## Search For Files

Multiple approaches for searching for files are offered. If you are searching for a file by its file name `locate` is the choice, `find` is used to search for files by its attributes, `grep` allows searching for files via their content.

### The `locate` command

Locate performs a database search for paths matching the search term.

~~~~ bash
locate Pictures/Screenshot
~~~~
The above command will search for all files and folders starting with `Screenshot-` laying under a location containing `Pictures`. It simply searches for the specified search term in the full path of a file. An exemplary result of the command can be seen below:

~~~~
/home/user/Desktop/backup/Pictures/Screenshots
/home/user/Desktop/backup/Pictures/Screenshots/35574917.png
/home/user/Desktop/backup/Pictures/Screenshots/Screenshot_20210208_093220.png
/home/user/Pictures/Screenshot_20210921_224523.png
~~~~

Exercise:
*Use locate to list all .bak files on the system.*

