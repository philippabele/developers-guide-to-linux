# Persmission Basics
The topic permissions is discussed in chapter 9 of The Linux Command Line.
If you list the contents of a directory with `ls -l` you can see the owner, group and permissions set for a file.

~~~~~
-rwxr--r-- 1 dummy dummy   43 Jan 26 09:34 output
~~~~~

## Ownerships
The first name that can be seen (dummy) is the *user* owning the file, the second one ist the *group* owning the file
A user can be member of multiple groups, but can only have one primary group (in this case dummy). The group owning a file can be different from the owners primary group.
You can view the current user and its infos with the command `id`. To see the groups you are part of use `groups`. 

## Permissions
The permissons are split into three flag triplets:
- *r*: being able to **read** the contents of the file
- *w*: being able to **write** to the file
- *x*: being able to **eXecute** the file

The first *rwx* triplet defines the permissions of the owner over the file, the second one the permissions of the group and the third one the permissions of other.

## Sudo 
In case you don't have the needed permissions to perform a operation you can use `sudo` - super user do. To use sudo your user has to be part of the group `sudoers` on Debain based machines and `wheel` on RedHat based machines.

## Exercise
Use `id`to get some infos about your user.

