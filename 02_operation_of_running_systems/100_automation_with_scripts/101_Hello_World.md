## Shell Scripts
This chapter is based on the chapter 11 of Linux - Rheinwerk Verlag.
Shell scripts make it possible to write down complex tasks into scripts. These scripts can be used to automate management and orchestration.

### Hello World!
Shell scripts typically start with a shebang or hashbang:

~~~~ bash
##!/bin/bash
...
~~~~
The shebang tells the calling shell which binary to execute the script with.
A script can contain all commands that can be executed by the shell by default. An exemplary script could look like this:

~~~~ bash
##!/bin/bash

echo HelloWorld!
~~~~

### Comments
Comments can be started with a `#`:

~~~~ bash
## this is a comment
echo foo # this is a comment too
~~~~

### Exercise
Write a script which echoes your name and put in a comment describing what it does.


