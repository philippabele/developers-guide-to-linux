# Use Regexes to Analyze texts

## Vim, Less, Man and Co.
In Vim, Less or Man interfaces type /, enter a regex pattern and hit enter to search for it.

### Find and Replace in Vim
To use find and replace in vim enter the following pattern in command mode:

``` bash
# Search and replace in current line 
:s/pattern/newtext/g
# Search and replace in whole file
:%s/pattern/newtext/g
```

The `g` behind the last slash is a switch, the following other switches can be used:
- g - global, go on after first match
- i - case insensitive
- I - case sensitive
- c - confirm before replacing

## Grep
As mentioned before in the Search Files section Grep can be used to search for file content. Use `grep` with the `-E` flag to search in extended regex mode.
Grep uses a different notation for character classes:

- \d -> \[\[:digit:\]\]
- \s -> \[\[:space:\]\]
- \w -> \[\[:alnum:\]\]

Check the grep man page for more.

Some useful flags when searching with grep:

- -i - ignore case
- -v - invert match
- -c - count
- -l - list files with matches
- -L - list files without matches
- -n - print line number together with match

## Exercise
Find all occurrences of a date matching the date pattern defined earlier in the file 102_exercise using `grep`.


