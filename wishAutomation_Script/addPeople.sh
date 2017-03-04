#This script will prompt you to provide information of the new people that you want to add in the bdayPlusEmail.txt and later on it will also have option of having a feature to delete some names if you like. 

#############################
# Global Varialbe Declaration
#############################
birthday=""
nameofBdayPerson=""
emailAddress=""
userInputVerification="s"

#########################
#Function definitions - we have to create function def firrst before using it.
#########################
#1. Create a function to ask for user info
inputPeopleFun()
{
echo "Please enter the birtday you want to add in MM/DD formate ony:"
read birthday
echo "Enter name of the person:"
read nameofBdayPerson
echo "Enter their email address:"
read emailAddress

echo "Please verify the details you have entered."
echo "You entered: "

#The line below displays the user input
echo "$birthday" "$nameofBdayPerson" "$emailAddress"

echo "Please enter r to reenter, q to quit without adding, s to save info to the list."
read userInputVerification
}

#2. If there is no input validation enter, recall the script.
noValidationEntry()
{
  #In the case if the user does not enter any input for userInputVerification
  while [ ${#userInputVerification} -eq  0 ]
	do 
	#Keep calling the function until the user doesn't provide some input.
	scriptExecutionFun
	break
  done
}

#3. If there is some user input for the valdation 
someValidationEntry()
{
  #In the case when user enter some input for verificaiton
  while [ ${#userInputVerification} -ne  0 ]
  do 
	if [ "$userInputVerification" -eq "s" || "$userInputVerification" -eq "S" ] 
	then
	   #The line below only adds a new entry to the list.
           echo $birthday $nameofBdayPerson $emailAddress >> bdayPlusEmail.txt
	   echo " \"${nameofBdayPerson}\" was added to the list."
	   break
	elif [ $userInputVerification -eq "r" || $userInputVerification -eq "R" ]
	then #If user has some error rerun the whole script.
	   scriptExecutionFun
           break 	
	elif [ $userInputVerification -eq "q" || $userInputVerification -eq "Q" ]
	then
	   break
	else #If user did not enter r,s, or q, restart thw whole script.
	   scriptExecutionFun
	   break
	fi
  done
}	

#4. Script execution Fun
scriptExecutionFun()
{
#To get the user input
inputPeopleFun
echo "$userInputVerification"

#Valide userInputverification variable.
noValidationEntry

#Validate if user entered something
someValidationEntry
}




#########################
#Function Calls
#########################
scriptExecutionFun



  

 	 
