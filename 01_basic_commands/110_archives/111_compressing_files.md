### Compressing Files
This topic is based on chapter 18 of the Linux Command Line.
While under Windows `zip` is the default compression format on Linux `gzip` and `bzip2` are used.

#### The Tool Gzip
Usage of `gzip`:

~~~~~ bash
### Compressing files
gzip foo
### Decompressing files
gzip -d foo.gz
#### or
gunzip foo.gz
~~~~~

Bzip is used in the same way but uses an other compression algorithm internally.

### Exercise
- read the man page of `gzip` to learn more about it
- look at the size of the file *111_exercise* using `ls -lh`, compress it using either `gzip` or `bzip2` and look at the new files size. Decompress the file again.