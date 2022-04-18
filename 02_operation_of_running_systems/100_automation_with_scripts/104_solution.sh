#!/bin/bash
fileCount=$(ls | wc -l)
while :
do
    if [ $fileCount -ge 5 ]
    then
        echo 'Too much files in here!'
    fi
done