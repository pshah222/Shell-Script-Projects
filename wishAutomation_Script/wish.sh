#!/bin/bash
#Automate the process of sending email from your google account using command line. 
#This file only has the logic of the sending the email who ever has birthday today. It doesn't allow you to add other people in the bday list. 
#To add people in the list go to the addPeople.sh, it will add append people in bdayPlusEmail.txt
#Ask user to pass the email address they want to send email.
#Use the positional parameter to retrive the receiver's email address.
#save the input file ina variable to use 
birthdayList=sendEmailto.txt

#Remove the file wishSentto.txt once you are done with the day, we can not have it at the end.
#If we delete at the end of this program then we won't be able to see it. 

#Save today's date in a variable
TODAY=`date +"%m/%d"`

#Print variable today just to check if it has correct date or no.
#Add today's date to show the results.
echo $TODAY > wishSentto.txt


#Over here you really do not need cat command it is jsut there so that your other command would work.
cat todaysBdays.txt | grep $TODAY bdayPlusEmail.txt > todaysBdays.txt 
#Create file which only has the email address of the people whoever have a birtday today.
cut -d " " -f3 todaysBdays.txt > sendEmailto.txt 

#Create a file which only has the name of the people whoever you sent wishes to.
cut -d " " -f2 todaysBdays.txt >> wishSentto.txt

#The next line changes the mode of the input from default of command line to a file.
exec < $birthdayList

#loop through the end of the file loop will terminate by itself when you reach the end of the file.
while read line
	do  
	echo "Email sent to : $line"  
	#Using the things you learned from the youtube video as mentioned in your README.md of this project.
	ssmtp  $line < bdayWish.txt 2> errorLog.txt  
done

#Delete the sendEmailto.txt once you are done running the script for each day
rm sendEmailto.txt
rm wishSentto.txt



