#!/bin/bash
#Automate the process of doing git push
#update the value in the status.txt file
git status > status.txt
if grep -q committed status.txt; then
    echo "There are unstaged changes..."
    git status
    git add .
    git status
    #Save the commit message in a variable to read
    echo "Enter the commit message and then hit enter"
    read commitMessage
    git commit -m "$commitMessage"
    #git status
    git push
    git status > status.txt
else
    echo "Nothing to commit, working directory is clean."
    fi

