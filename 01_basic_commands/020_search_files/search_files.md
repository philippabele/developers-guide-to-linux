# Search For Files

Multiple approaches for searching for files are offered. If you are searching for a file by its file name `locate` is the choice, `find` is used to search for files by its attributes, `grep` allows searching for files via their content.

## The `locate` command

Locate performs a database search for paths matching the search term.

``` bash
locate Pictures/Screenshot
```
The above command will search for all files and folders starting with `Screenshot-` laying under a location containing `Pictures`. It simply searches for the specified search term in the full path of a file. An exemplary result of the command can be seen below:

```
/home/user/Desktop/backup/Pictures/Screenshots
/home/user/Desktop/backup/Pictures/Screenshots/35574917.png
/home/user/Desktop/backup/Pictures/Screenshots/Screenshot_20210208_093220.png
/home/user/Pictures/Screenshot_20210921_224523.png
```

## The `find` command

To search for files by file attributes the `find` command is used.
Find requires only the path to search in as an argument. If you give your home-path `~` to it. It lists all files and folders located in your home directory, as we didn't specify what to search for.
``` bash
find ~
```

To specify what to search for flags are used: 

``` bash
find ~ -name "Screenshot*"
```
The above command searches for all files and directories beginning with the word `Screenshot` the asterisk is used as a wildcard for a unknown number of unknown chars.
Find offers a number of such search flags which help to narrow the search down further.

``` bash
find ~ -name "Screenshot*" -type f 
```
This command limits the search to results of the type **f**ile.
A full list of the flags available can be seen in the following table

| Flag             | Matches |
|------------------|---------|
| -cmin *n*        |Files/Directories, with content/attributes last modified *n* minutes ago                |
| -cnewer *file*   |Files/Directories, with content/attributes last modified more recent than those of file |
| -ctime *n*       |Files/Directories, with content/attributes last modified *n*\*24 hours ago              |
| -empty           |Empty files/directories                                                                 |
| -group *name*    |Files/Directories belonging to *group* (given as name or group ID)                       |
| -iname *pattern* |Case-insensitive *-name* option                                                         |
| -inum *n*        |Files with Inode number *n*                                                             |
| -mmin *n*        |Files/Directories, with content last modified *n* minutes ago                           |
| -mtime *n*       |Files/Directories, with content last modified *n*\*24 minutes ago                       |
| -name *pattern*  |Files/Directories with specified wildcard *pattern*                                     |
| -newer *file*    |Files/Directories with content more recently modified than *file*                       |
| -nouser          |Files/Directories belonging to no valid user                                            |
| -nogroup         |Files/Directories belonging to no valid group                                           |
| -perm *mode*     |Files/Directories with permissions set to *mode* (given as octal or symbolic notation)  |
| -samefile *name* |Files that share sae inode number as file *name*                                         |
| -size *n*        |Files of size *n*                                                                       |
| -type *c*        |Files of type *c* (types listed in table below)                                         |
| -user *name*     |Files/Directories belonging to user *name* (given as username or user ID)               |  

| File Type | Description                   |
|---        | ---                           |
|b          |Block special device file      |
|c          |Character special device file  |
|d          |Directory                      |
|f          |Regular File                   |
|l          |Symbolic Link                  |

### Logical Operators
The `find` command allows combination of tests via logical operators to search for files more granular.

| **Operator**  | **Description**                                                                       |
|---            |---                                                                                    |
| -and/-a       | True if the tests on both sides are true (Implied as default, when no operator used)  |
| -or/-o        | True if one test on the side is true                                                  |
| -not/!        | True if the test following is false                                                   |
| ( )           | Groups operations, modifying the evaluation order                                     |

The example below searches for *png* and *pdf* (`-name "*.png" -or -name "*.pdf"`; `-type f`) files, in the home dir of the current user (`~`), owned by the use *liam* (`-user dummy`)

``` bash
find ~ \( -name "*.png" -or -name "*.pdf" \) -type f -user dummy
```

### Actions

Find can be used to execute actions on the files found. 

#### Predefined Actions

Find has some predefined actions:

|Action         |Description                            |
|---            |---                                    |
|-delete        |Delete matching file                   |
|-ls            |Perform ls -dils on matching file      |
|-print         |Output full pathname (default)         |
|-quit          |Quit once matched                      |

The example below will delete all screenshot files of the current user.

``` bash
find ~ -name "Screenshot*" -type f -delete
```
The order of the tests and actions is important as by leaving the logical operator between the tests an `-and` is implied. 

``` bash
find ~ -name "Screenshot*" -and -type f -and -delete
```
Order of execution:
- 1. `-name "Screenshot*"` is executed first, without any dependencies
- 2. `-type f` is executed second, in case `-name "Screenshot*"` matched
- 3. `-delete` is executed third in case `-type f` also matched

As the print statement is connected with an `-or` in the example below, it will be executed independent from the statements before, printing all files.

``` bash
find ~ -name "Screenshot*" -and -type f -or print
```

#### User Defined Actions
It is possible to execute user defined actions on results of the find command by adding the pattern below:

``` bash
-exec command {} ;
```

The `{}` is the symbolic representation of the results pathname. The `;` serves as a delimiter for the command. Instead of `;`, `+` can be used. With the semicolon the action will get executed for every result in once. By using the plus as a delimiter, find will combine pathnames and execute them at once, making the command more efficient.

The above example of deleting screenshots would look like this with a user defined action:

``` bash
find ~ -name "Screenshot*" -type f -exec rm '{}' '+'
```


