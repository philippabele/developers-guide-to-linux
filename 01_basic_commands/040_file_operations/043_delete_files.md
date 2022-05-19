### Deleting Files
This Topic is dealt with in Chapter **4 - rm** of The Linux Command Line.

#### The `rm` command
The `rm` command is used to delete files and folder on the Linux Command Line.
It has 3 important operational flags:

- **-i** - *--interactive* - Prompt for confirmation before deleting
- **-r** - *--recursive* - Recursively delete -> Delete subfolders and files
- **-f** - *--force* - do not ask before deleting write protected files, ignore non existent files; **overrides** interactive

The flags are used in the example below:

~~~~
### Deletes the file samplefile after asking for confirmation
rm -i samplefile

### Deletes the content of sampledir and it's content
rm -r sampledir

### Deletes the writeprotected file writeprotectedsample without asking for confirmation
rm -f writeprotectedsample
~~~~

#### Exercice:
Use the script `020_testenv.sh` to create testfiles in your current folder and write a script to delete the folder *somedir* and its write protected contents without being asked for confirmation.
