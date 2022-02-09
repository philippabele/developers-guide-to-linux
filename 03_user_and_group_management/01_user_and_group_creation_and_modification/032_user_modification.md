# Working with Users
In this section it will be explained how to modify and delete users.

## Modify Users
Users can be modified with the command `usermod`. Usermod supplies the following basic flags:

- -l: change username
- -d: change home dir
  - -dm: move current home dir
- -L: lock user
- -U: unlock user

``` bash 
usermod -d /home/dummy dummy 
```

This will assign the user dummy the homedir */home/dummy*

## Delete Users
To delete users the commands `userdel` or `deluser` are used:

``` bash
userdel dummy
deluser dummy
```

Deluser offers the possibility to remove the home directory of the user (`--remove-home`), all files of the user (`--remove-all-files`), and backup the users files as an archive (`--backup`)
Userdel offers the possibility to remove the users home directory (`-r`).s

## Exercise
- Read the manpages of `usermod` to learn more
- Change the username from *dummy* to *buster*
- Delete the user *buster*