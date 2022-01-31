#!/bin/bash
# Make file executable with chmod +r <path_to_file> 
# execute file with  ./<path_to_file>

# cds in to your home dir
cd ~
# creates example_tree if not existing
mkdir -p example_tree
# cds into example tree
cd example_tree
# deletes all existing content in example tree
rm -rf *
# creates example folders
mkdir log Documents
# creates example files
touch log/example.log log/otherexample.log Documents/example.txt.bak 
# changes permissions for some of the files
chmod u-r log/example.log log/otherexample.log
# injects content into file
echo example_content > Documents/example.txt
echo example_content > Documents/otherexample.txt