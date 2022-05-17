### User Defined Actions
It is possible to execute user defined actions on results of the find command by adding the pattern below:

~~~~ bash
-exec command {} ;
~~~~

The `{}` is the symbolic representation of the results pathname. The `;` serves as a delimiter for the command. Instead of `;`, `+` can be used. With the semicolon the action will get executed for every result in once. By using the plus as a delimiter, find will combine pathnames and execute them at once, making the command more efficient.

The above example of deleting screenshots would look like this with a user defined action:

~~~~ bash
find ~ -name "Screenshot*" -type f -exec rm '{}' '+'
~~~~

Exercise:
*Create a Bash script, which adds read privileges to all .log files in the exemplary folder structure for the current user. Tip: To add read privileges for the current user use `chmod u+r <filename>`*
