#This script will prompt you to provide information of the new people that you want to add in the bdayPlusEmail.txt and later on it will also have option of having a feature to delete some names if you like. 


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

echo "Please enter r/R to reenter, q/Q to quit without adding, s/S to save info to the list."
read userInputVerification

while [ -z userInputVerification ]
do
echo "Please enter one of the above options."
read userInputVerification
done

if $userInputVerification==r || $userInputVerification==R 
#The line below only adds a new entry to the list.
echo $birthday $nameofBdayPerson $emailAddress >> bdayPlusEmail.txt
 
