# Linking Basics

Linux offers two ways of linking files.

## Hardlinks
Hardlinks are the original way of linking files in the Unix world. In fact each file you see in a file explorer is a hardlink to a file, which gives the file its name. A file can have multiple hardlinks. A will get deleted/dereferenced when all hardlinks referencing it get deleted. Hardlinks can only point to files in the same filesystem.

## Softlinks/Symbolic Links

Soflinks are the modern way of linking files in Unix Systems, they overcome the limits of hardlinks. Softlinks are special files containing text pointers to the file they are referencing.

## Direct Comparison

The following code shows a directory with the file `test.txt`, a hardlink and a softlink to it.
It can be seen, that the original file and the hardlink share the same inode number - they are quintessentially the same. The softlink has a different inode number - it is an independent file. The softlink additionally is pointing to the original test.txt file. 

```bash
9181703 -rw-rw-r--. 2 dummy dummy 0 Dec 27 14:58 test.txt
9181703 -rw-rw-r--. 2 dummy dummy 0 Dec 27 14:58 hardlink
9181859 lrwxrwxrwx. 1 dummy dummy 8 Dec 27 14:59 softlink -> test.txt
```

### Excursion: Inode Number
The inode number is an index in the so called inode table. In this table information about the file is stored, like its owner, size, permissions, or location. A files inode basically is its identity.