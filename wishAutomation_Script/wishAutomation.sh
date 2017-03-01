#!/bin/bash
#Automate the process of sending email from your google account using command line. 

#Ask user to pass the email address they want to send email.
#Use the positional parameter to retrive the receiver's email address.

ssmtp $1 < wish.txt  




