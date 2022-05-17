### Logical Operators
The `find` command allows combination of tests via logical operators to search for files more granular. The available logical operators are listed below:

- **-and/-a** - True if the tests on both sides are true (Implied as default, when no operator used)
- **-or/-o** - True if one test on the side is true
- **-not/!** - True if the test following is false
- **( )** - Groups operations, modifying the evaluation order

The example below searches for *png* and *pdf* (`-name "*.png" -or -name "*.pdf"`; `-type f`) files, in the home dir of the current user (`~`), owned by the user *dummy* (`-user dummy`)

~~~~ bash
find ~ \( -name "*.png" -or -name "*.pdf" \) -type f -user dummy
~~~~

Exercise:
*List all files owned by root or the current logged in user (find out username with `whoami`) in /home.*
