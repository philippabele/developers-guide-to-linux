## Manipulating File Content Using Vim
The command line editor Vim can be used to manipulate the content of a file.
After opening the editor using `vim file` it is in command mode. The editor has multiple modes and commands:

- INSERT mode - Manipulate the file content - Press *i* in command mode to get there
- VISUAL mode - Select text - Press *v* to get there
  - press *y* to yank/copy the selected text to a vim register
  - press *p* to paste yanked text
  - press *x* or *Del* to cut text
- VISUAL LINE mode - select lines of text - Press *Shift-v*
- VISUAL BLOCK mode - select blocks of text - Press *Strg-v*
  - select a multiline one cursor wide text and press Shift-I get into 'multicursor mode'. After pressing ESC the changes you made to the first line of the selection will be applied to all lines

The most important commands are:

- :w - write the file
- :q - close the editor
- :q! - force close the editor
- :wq - write and close 
- :w !sudo tee % - write to a witeprotected file (can also be done by opening vim with sudo)

Press ESC form any mode to get back to command mode

### Vimdiff
Call vim with the flag `-d` and two files as arguments to get the differences between the files highlighted.

### Exercise
Remove the difference between the files testfile1 and testfile2 in testfile2 using vim.
