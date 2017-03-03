#!/bin/bash
#Automate the process of sending email from your google account using command line. 

#Ask user to pass the email address they want to send email.
#Use the positional parameter to retrive the receiver's email address.
#save the input file ina variable to use 
birthdayList=emailList.txt

exec < $birthdayList
while read line
do  
echo "Email sent to : $line "
ssmtp  $line < wishBirthday.txt 2> errorLog.txt  
done





