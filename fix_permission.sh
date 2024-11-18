#!/bin/bash

read -p "This is a script to fix permissions. Once executed, it will change the permissions of files and directories to their defualt Ubuntu values. 
  
Enter the ABSOLUTE PATH to the directory: "  dir

if [[ -d "$dir" ]]
then
	echo -n "Changing files permissions to 644 recursively..."
	sudo find $dir -type f -exec chmod 644 {} \;
	if [[ $? -eq 0 ]];then
		echo "Done"
		sleep 2
		echo -n "Changing subdirectories permissions to 755 recursively..."
		sudo find $dir -type d -exec chmod 755 {} \;
	fi
	
	if [[ $? -eq 0 ]];then
		echo "Done"
	fi
else
	echo -e "The PATH entered is invalid..."
	exit 1
fi
