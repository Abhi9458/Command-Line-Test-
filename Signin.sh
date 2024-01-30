#!/bin/bash

<<Doc
Name          : Abhilash Manohar Javali
Date          : 23-12-2022
Description   : This Script validates th existing user
Sample input  :
Sample output :
Doc

#import the files 
#source exit.sh

#welcome heading

flag=0
echo -e "                                                      "
echo -e "......................................................"
echo -e "                \033[30m\033[107m Welcome to SIGN-IN \033[0m     "
echo -e "......................................................"
echo -e "                                                      "
echo -e "                                                      "


echo -en "Enter the UserName: " # Prompt the user for the username if user existing
read username

echo -en "Enter the Password: " # Prompt the user for password for the existing account
read -s password

#accessing the user_database file for validating the user
	user=(`cat user.csv | cut -d ";" -f 1`)
	line_count=(`cat user.csv | wc -l`)
    user_password=(`cat password.csv | cut -d ";" -f 1`)

	for((i=0; i<$line_count; i++))
	do
		if [ "${user[i]}" == "$username" -a "${user_password[i]}" == "$password" ]
		then
           flag=0;
			break
		else
			flag=1
		fi
   
	done

	if [ $flag -eq 0 ]  
	then
        echo -e "\n\n \033[1m Sign in Successfully :) \033[0m"
		bash test_page.sh 
	else
		echo -e "\n\033[91m Entered username and password is incorrect please enter the correct one \033[0m"
	bash Signin.sh
    fi
