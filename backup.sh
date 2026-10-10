#!/bin/bash

<<info
	This Script will take periodic backup
Let me check the updates are modified on GitHub Account or not
eg:- 
./backup.sh <source> <dest>
src = /home/raman/scripts
dest = /home/raman/backups
info

src=$1
dest=$2

timestamp="$(date +%Y-%m-%d-%H-%M)" 

zip -r "$dest/backups-$timestamp.zip" $src 

aws se sync "$dest" s3://ssd-backups-1

echo "Backup Completed"
