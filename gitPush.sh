#!/bin/bash
#Automate the process of doing git push
#update the value in the status.txt file
git status > temp.txt
if grep -q committed temp.txt; then
    echo "There are unstaged changes..."
    git status
    git add .
    echo "Added all the files to the stagging area."
    #Save the commit message in a variable to read
    echo "Enter the commit message and then hit enter to commit changes"
    read commitMessage
    git commit -m "$commitMessage"
    #git status
    #The line below will as kyou to enter username and password for github account and aslo check if you entered wrong user id or password, it will ask you to enter again.
    if git push
      then
 	 echo "git push succeeded"
    else
         echo "git push failed"
	 echo "Please retype your credentials properly."
         git push	
    fi 
    git status > temp.txt
else
    echo "Nothing to commit, working directory is clean."
    fi
rm temp.txt
