#!/bin/bash

<<info
	This shell script checks if user does really exists or not
info

read -p "Enter the Username you wish to check :- " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
echo "$count"

if  [ $count -eq 0 ]
then 
	echo "User does not exists...."	
else 
	echo "User Do Exists..."	

fi	


#echo "$count"
