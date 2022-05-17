### Archiving Files 
The default utility to archive, compress, unpack and decompress files on Linux is `tar`.

#### The Tool Tar
Tar allows the user to bundle many files into one. It has built in support for `gzip` and `bzip2`

Tar has the following modes with which it can be called:

- c - create an archive
- x - extract an archive
- r - append files to end of archive
- t - list contents of the archive
- d - compare archives
- u - update files in archive with older timestamp than supplied files

The modes can be combined with other options like:

- f - specify the archives name on command line
- z - use gzip with tar
- a - auto compression, choose compression program

~~~~ bash
tar -cf file.tar file 
~~~~

The Tar mode always has to lead before the other options.

#### Examples

Creating an compressed archive:

~~~~ bash
tar -czf archive.tar.gz file0 file1 file2 file3 
~~~~

Unpack compressed archive:

~~~~ bash
tar -xf archive.tar.gz
~~~~

#### Exercise
- Read tars man page to learn more about it.
- Pack the file *111_exercise* into an archive, append the file *112_exercise*. Gzip the archive.
