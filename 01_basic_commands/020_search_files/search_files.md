# Search For Files

Multiple approaches for searching for files are offered. If you are searching for a file by its file name `locate` is the choice, `find` is used to search for files by its attributes, `grep` allows searching for files via their content.

## The `locate` command

Locate performs a database search for paths matching the searchterm.

``` bash
locate Pictures/Screenshot
```
The above command will search for all files and folders starting with `Screenshot-` layung under a location conatining `Pictures`. It simply searches for the specified search term in the full path of a file. An exemplary result of the command can be seen below:

```
/home/user/Desktop/backup/Pictures/Screenshots
/home/user/Desktop/backup/Pictures/Screenshots/35574917.png
/home/user/Desktop/backup/Pictures/Screenshots/Screenshot_20210208_093220.png
/home/user/Pictures/Screenshot_20210921_224523.png
```

## The `find` command

To search for files by file attributes the `find` command is used.
Find requires only the path to search in as an argument. If you give your homepath `~` to it. It lists all files and folders located in your home directory, as we didn't specify what to search for.
``` bash
find ~
```

To specify what to search for flags are used: 

``` bash
find ~ -name Screenshot*
```
The above command searches for all files and directories beginning with the word `Screenshot` the asterisk is used as a wildcard for a unknown number of unknown chars.
Find offers a number of such search flags which help to narrow the search down further.

``` bash
find ~ -name Screenshot* -type f 
```
This command limits the search to results of the tpye **f**ile.
A full list of the flags available can be seen in the following table

| Flag             | Matches |
|------------------|---------|
| -cmin *n*        |         |
| -cnewer *file*   |         |
| -ctime *n*       |         |
| -empty           |         |
| -group *name*    |         |
| -iname *pattern* |         |
| -inum *n*        |         |
| -mmin *n*        |         |
| -mtime *n*       |         |
| -name *pattern*  |         |
| -newer *file*    |         |
| -nouser          |         |
| -nogroup         |         |
| -perm *mode*     |         |
| -samefile *name* |         |
| -size *n*        |         |
| -type *c*        |         |
| -user *name*     |         |


