#!/bin/bash
# write sth. into the file output
echo foo > output
# view the file
cat output
# append to the file
echo bar >> output
cat output
# overwrite the file
echo foobaronliner > output
cat output