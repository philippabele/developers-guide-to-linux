### Group Creation and Modification

#### Create Groups
Use `groupadd` or `addgroup` to create a new group.
Analogous to the user creation, `addgroup` is a interactive frontend for `addgroup`.

~~~~ bash
addgroup new_group
~~~~

#### Modify Groups
To modify groups use the `groupmod` command:

~~~~ bash
groupmod -n exemplary_group new_group
~~~~
The example above changes the groupname from *exemplary_group* to *new_group*
#### Delete Groups
To delete groups use the `groupdel` command:

~~~~ bash
groupdel exemplary_group
~~~~

#### Exercise
- Read the manpages for `groupadd`/`addgroup`, `groupmod` and `groupdel` if you want to learn more
- Create a group `new_group` and rename it to `dummy_group`
