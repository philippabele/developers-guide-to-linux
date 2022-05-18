### Actions

Find can be used to execute actions on the files found. 

#### Predefined Actions

Find offers predefined actions, which can be seen in by calling `find --help`

~~~~~
actions: -delete -print0 -printf FORMAT ...
~~~~~

The core actions are explained in **The Linux Command Line** in the subchapter *17 - find - Predefined Actions*

The example below will delete all screenshot files of the current user.

~~~~~ bash
find ~ -name "Screenshot*" -type f -delete
~~~~~
The order of the tests and actions is important as by leaving the logical operator between the tests an `-and` is implied. 

~~~~~ bash
find ~ -name "Screenshot*" -and -type f -and -delete
~~~~~
Order of execution:
- 1. `-name "Screenshot*"` is executed first, without any dependencies
- 2. `-type f` is executed second, in case `-name "Screenshot*"` matched
- 3. `-delete` is executed third in case `-type f` also matched

As the print statement is connected with an `-or` in the example below, it will be executed independent from the statements before, printing all files.

~~~~~ bash
find ~ -name "Screenshot*" -and -type f -or print
~~~~~

Exercise:
*Delete all .bak files in the example directory tree.*

