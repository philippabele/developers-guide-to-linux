# User Creation and Modification
This topic is based on the chapter 13.2 of the book Linux from Rheinwerk-Verlag

## Creating Users
There are two available options to create users on the command line: `useradd` and `adduser`.
Useradd takes the information for creation as parameters, while adduser asks for them.
Adduser is a frontend for useradd, which feeds useradd the information entered.

Exemplary `useradd` call:

~~~~ bash
useradd dummy 
~~~~

This will add the user dummy to the system. As no parameters were specified it will have no home directory and password.

## Change or Create a Password
The command `passwd` can be used to change the password of an user or create one if not existing.

~~~~ bash
passwd dummy
~~~~
You will be asked for a new password for the user dummy

## Exercise
- Look at the man pages of `useradd`, `adduser` and `passwd` to learn more
- Create a user *dummy* with the password *secret* (hint: adding users requires root privileges)
