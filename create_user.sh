#!/bin/bash

<< info
This script will create an user as well delete an user
info

# User Create
echo "===== User Creation has Started ====="

read -p "Enter username :- " username

read -p "Enter Password :- " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd $username

echo "===== User Creation Completed ====="

# User Delete 
echo "===== User Deletion Starts here ====="

#echo "Enter Username to be Deleted" username

sudo userdel $username

echo "***** User Deletion Completed Here *****"


# checks whether user is deleted or not
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}')==0 ]

then 
	echo "As the wc count is 0 Hence the user is deleted" 
else
	echo "User is not Deleted...."
fi
# Check whether user to be deleted exists or not

#sudo userdel "$username"

cat /etc/passwd | grep "$username" | wc

echo "As wc count is 0 the user is deleted"
