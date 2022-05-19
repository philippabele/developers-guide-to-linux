### User Privileges
This chapter is based on chapter 13.4 of the book Linux - Rheinwerk Verlag
User Types on Linux are differentiated into **root** and **standard** users.
Principally the root user has unlimited access to the system, while a standard user only can access files which he has permissions to.

#### Super User Do
The command `sudo` allows standard users to execute commands as root:

~~~~
sudo vim /etc/sudoers
~~~~

In the above command the file */etc/sudoers* gets opened with vim. Per default only the root user has access to this file. This file regulates the access to the sudo command.
Per default users who are in the group *sudo* (Debian)/*wheel* (RedHat) have access to run sudo.

#### Exercise
Create a file in */root*
