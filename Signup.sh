#!/bin/bash

<<Doc
Name          : Abhilash Manohar Javali
Date          : 18-12-2022
Description   : Command line test (Signup)
Sample input  :
Sample output :
Doc

#imports the required files 
#source exit.sh



#screen head
echo -e "                                                      "
echo -e "......................................................"
 echo -e "                \033[30m\033[107m Welcome to SIGN-UP \033[0m     "
echo -e "......................................................"
echo -e "                                                      "
echo -e "                                                      "




#prompt the user for user_name
echo -ne  "Enter UserName: "
read username
if [ $username ]
then
#gets the existing user from the user_database
flag=1
user_name=(`cat user.csv | cut -d ' ' -f 1`)
user_count=(`cat user.csv | wc -l `)

#check if the user-name is present in the database
for((i=0; i<$user_count; i++))
do

    if [ "${user_name[i]}" == "$username" ]
then
	flag=0
break    
fi
done

#validates the user_name 
if [[  $flag -eq 1 ]]
then
	user_name=$username
	echo -n "Enter Password:"
	read -s  password

#validates the password for 8 - alpha numeric character or thrown an error
	if [ ${#password} -gt 6 ]
	then
			echo -en "\nEnter Confirm Password:"
			read -s  re_password

#validates the password and the confirm password or thrown an error
			if [  "$password" == "$re_password"  ] 
			then
                pass_word=$password
                echo -e "\n\n \033[1m Signup Done Successfully :) \033[0m"
               else
			
				echo -e -n "\033[91m Password and Confirmation password is not matched re-enter \033[0m"
				bash Signup.sh
            fi
        else
            echo -e "\033[91m Password Should have atleast 6-Charcters \033[0m"
			bash Signup.sh
        fi
    else
        echo -e "\033[91m This user name exist so re-enter \033[0m"
        bash Signup.sh
        
    fi
else
    echo -e "\033[91m Password Should be atleast 6-character \033[0m"
	bash Signup.sh

fi 
echo "$user_name" >> user.csv # Store all user names to user.csv file
echo "$pass_word" >> password.csv   # Store all user password to password.csv file


