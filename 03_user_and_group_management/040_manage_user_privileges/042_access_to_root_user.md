### Access to the Root User
The root account is meant to be used for single tasks, which need elevated rights, **not** as a daily user for the system administrator.

During the Setup Process of a new system the password for the root user either gets set or disabled.

To change to the root user from a standard user either use `su root` if a password is set and known or `sudo su` to use the sudoer privileges of the standard user if present.

#### Exercise
Switch to the root user and insert the text: 'Written As Root' to the file.
