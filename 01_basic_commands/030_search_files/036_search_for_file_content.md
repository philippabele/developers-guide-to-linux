### Search for file content
In this chapter a easy way to search for file content via `grep` will be explained.

#### `grep`
Grep is a tool to search files via regular expressions it. To see its full usage view its manpage `man grep` or go to the subchapter *3 - 19 - grep* in **The Linux command line**

Grep can be used to search multiple files for a pattern by using the `-R` flag.

~~~~
grep -R "some_pattern" *
~~~~

The asterisk at the end is used to search through all files and folders in the current directory.

Exercise 1:
*Search the files in ~/example_tree for the pattern 'example_content'*

Exercise 2:
*Use find in combination with grep to search all .txt files in ~/example_tree for the pattern 'example_content'*
