#!/bin/bash
find ~/example_tree -name ".log" -type f -exec chmod u+r {} + 
# find ~/example_tree -name ".log" -type f -exec chmod u+r {} ';' also possible