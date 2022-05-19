### Changing the Owner and Group of a File
In this chapter it will be explained how to change the owner and the group owning a file.

#### Changing the Owner of a file
To change the owner of a file the command `chown` is used:

~~~~~ bash 
chown dummy output
~~~~~
The above example will change the owner of the file *output* to the user *dummy*.

#### Changing the Owning Group of a File
To change the group owing a file, the commands `chgrp` 

~~~~~ bash
chgrp dummygrp output
~~~~~
~~~~~ bash
chown dummy:dummygrp output
~~~~~
The above examples both will change the owning group of *output* to dummy group. By using `chgrp` you don't have to know the owner of the file to change the group.

#### Exercise
- Create a file *examplefile* with the command `touch examplefile` and change its owning group to *nobody*.
- Lookup the man pages of `chown` and `chgrp` to learn more about the commands
