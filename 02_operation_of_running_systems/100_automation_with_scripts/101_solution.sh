#!/bin/bash
while :
do
    if [ $(ls | wc -l) -ge 5 ]
    then
        echo 'Too much files in here!'
    fi
done