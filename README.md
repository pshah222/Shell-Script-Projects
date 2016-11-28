# Shell-Script-Projects
This project is a a collection of small and really helpful shell scripts. This scripts can be executed from the command line. 
I created these scripts to automate the generic processes. 
Detailed Description: 
1. gitPush.sh 
The reason to create this shell script was to elimate the need of doing:
git add .
git commit -m "message"
git push 

I had to type this manually everytime. So, I created this script which will first check if I have any changes to commit and if yes, then It will add the files and ask user to enter the commit message and will push the changes. 
If there is nothing to commit, then it will prompt user a message about it. 

In the first run of this script, it will create temp.txt, you need to do the above 2 steps manually at first. After the first time, the script will take care of your work. No need to keep writting repeated commands. 
