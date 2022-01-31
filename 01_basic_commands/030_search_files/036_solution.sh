#!/bin/bash
# Exercise 1
grep -R 'example_content' ~/example_tree/*
# Exercise 2
find ~/example_tree -name "*.txt" -type f -exec grep 'example_content' {} +