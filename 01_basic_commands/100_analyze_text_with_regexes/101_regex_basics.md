# Regular Expression Basics

Regular Expressions can be used to define patterns matching specific parts of text.
This part is based on chapter 19 of The Linux Command Line.

## Wildcards
To match text either literal characters or wildcards can be used. Some exemplary wildcards:

- \w - matches any word character (\W everything else)
- \d - matches digits (\D everything else)
- \s - matches spaces (\S everything else)
- \[a-z1-9#\] - matches the characters a, b, c ... z, 1, ... 9 and #. Any characters can be defined, some will have to be escaped.
- \[^a-z\] - matches any character not in a-z
- . - matches any character
- ^ - matches beginning of a line
- $ - matches end of a line
- \n - newline

## Quantifiers 
Besides wildcards quantifiers are also used in regexes:
- \* - any count of characters 0-x
- \+ - at least one character
- ? - zero or one character
- {3} - three characters
- {1,3} - one to three characters

## Grouping
Character sequences can be grouped, this can be used to further quantify them or to use them in find and replace actions.
To group sequences but them in brackets ().

Use | between two sequences or characters to search for the one OR the other.

## Example
The following regex matches the pattern of an IP Address. The dot has to be escaped to serve as literal dot, not as wildcard.

~~~~
\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}
~~~~
The website [regex101.com](https://regex101.com/) can be used to learn more about regexes and to experiment with them

## Exercise
Go to [regex101.com](https://regex101.com/) and write a regex to match the following date pattern "Monday 07.02.2022"
