#!/bin/bash
fileCount=$(ls | wc -l)
if [ $fileCount -ge 5 ]
then
    echo 'Too much files in here!'
fi