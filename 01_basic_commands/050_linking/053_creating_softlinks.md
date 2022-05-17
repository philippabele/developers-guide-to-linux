### Creating Softlinks
To create softlinks use the `ln` command with the `-s` flag:

~~~~bash
ln -s <original-file> <link>
### For example
ln -s test.txt softlink
~~~~

#### Exercise
Use the command `touch test` to create the empty file test in your current location. 
Write a script to create a hardlink called `test_hardlink` to the file test and create a softlink, ``test_softlink` to the hardlink.
**Extra:** Use the command `ls -li test*` to view all three files and compare their inode numbers. 
