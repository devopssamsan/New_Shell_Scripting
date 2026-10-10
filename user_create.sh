#!/bin/bash

<<sandeep

	This is used
	for creating
	multiline 
	comment
sandeep

echo "#### user Creation Started ####"

read -p "Enter username :-" username

read -p "Enter passswrord:-" password

sudo useradd -m -p "$password" "$username"

echo "####User Creation Completed#####"

#sudo userdel $username

#echo "#### Deletion of User Completed ####"

cat /echo/passwd | grep $username | wc | awk "{print} "

