# Create Directories
This Topic is dealt with in Chapter **4 - mkdir** of The Linux Command Line.

## Create Single Directory

To create a new directory use the command `mkdir`.

~~~~~bash
mkdir sampledir
~~~~~ 
## Create Directory in Directory

The above example will create the directory sample dir in the current directory. To create a new folder in *sampledir* you can type:

~~~~~bash
mkdir sampledir/otherdir
~~~~~

## Create Whole Tree

This command assumes sampledir is already existing. To create a whole directory tree if not existing use the Switch `-p`

~~~~~bash
mkdir -p notexisting/sampledir
~~~~~

The above example will create the folder *notexisting* and the directory *sampledir* within it.

## Create Multiple Directories

To create multiple directories simply write them after each other like that:

~~~~~bash
mkdir sampledir othersampledir
~~~~~

## Exercice

This exercise will combine the simple Operations listed above.
Write a script, which creates the folders *sampledir/withinnerdir* and  *singlesampledir*

