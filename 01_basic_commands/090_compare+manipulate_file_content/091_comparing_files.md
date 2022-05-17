## Comparing File Content
This topic is based on chapter 20 - Comparing Text of the Linux Command Line.
As learned in the previous chapter file content can be viewed using the commands `less` (scrollable) or `cat` (print whole file to terminal). 
The contents can be compared manually by viewing them with the above commands, or the command `diff` can be used.
The tool gets called as follows:

~~~~ bash 
diff file1 file2
~~~~

The output will highlight the differences between the files:

~~~~
3c3
< an exemplary line
---
> a difference
~~~~

The differing line is displayed above.

### Exercise 
Compare the files *testfile1* und *testfile2*. In which line is the difference? What is the differing text?
