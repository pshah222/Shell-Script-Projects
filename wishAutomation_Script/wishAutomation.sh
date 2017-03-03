#!/bin/bash
#Automate the process of sending email from your google account using command line. 

#Ask user to pass the email address they want to send email.
#Use the positional parameter to retrive the receiver's email address.
#save the input file ina variable to use 
birthdayList=bdaysList.txt

#Save today's date in a variable
TODAY=`date +"%m/%d"`

#Print variable today just to check if it has correct date or no.
#echo $TODAY
cat todaysBdays.txt | grep $TODAY bdayPlusEmail.txt > todaysBdays.txt 

#The next line changes the mode of the input from default of command line to a file.
exec < $birthdayList

#loop through the end of the file loop will terminate by itself when you reach the end of the file.
while read line
	do  
	echo "Email sent to : $line "
	#Using the things you learned from the youtube video as mentioned in your README.md of this project.
	ssmtp  $line < bdayWish.txt 2> errorLog.txt  
done





