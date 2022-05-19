## Changing Permissions of a File
To change the permissions of a file the command `chmod` is used.

~~~~
chmod u+w output
~~~~
In the above example the *u*ser (owner) of the file output gets granted write permissions on it.

### Additive/Subtractive Model
As shown above the entity you want to grant/revoke permissions is selected via its initial:
- u: user/owner
- g: group
- o: other
- a: all

You can use the following operators to assign/revoke permissions
- +: add permission
- -: revoke permission
- =: set permissions

Some examples:
- `g-r+w` the same as `g-r,g+w` -> revokes read permission, grants write permission
- `ou=g` -> grants other and user same rights as group
- see the man page line 220 for more


### Number-Based Model
Imagine each flag of a rights triplet gets assigned a number:
- r: 4
- w: 2
- x: 1

Now select the permissions you want to assign and add up their numbers. This way `rw-` would result in a *6*. Now do this for each entity and you get a number like 644 for `rw-r--r--`.
This way permissions can be assigned with `chmod`:

~~~~
chmod 0644 output
~~~~
The leading zero can be left out, it is used to express an octal value (0644 (octal) -> 0b 110 100 100 (binary)).

### Exercise
- Create the file `examplefile` and revoke all permissions of group and other.
- Read the man page if `chmod` to learn more about it.
