#!/bin/bash

<<Doc
Name          : Abhilash Manohar Javali
Date          : 23-12-2022
Description   :
Sample input  :
Sample output :
Doc

{
   
    echo  "1-Take the Test"
    echo  "2-Exit"
    echo
    read -p "Enter your choice: " choice 
    line=`cat questionbank.txt | wc -l`  # checking the line number of questionbank.txt file

echo -e "                                                                                                                      "
 echo -e "                                                              \033[30m\033[107m Welcome     \033[0m                                                     "                                             
  echo -en "                          "
  echo -en "                                  \033[92m All The Best \033[0m     "

    
    case $choice in
	1)
	    for i in `seq 5 5 $line` # starting i value is 5 & it will increase by 5 in each ietration
	    do

		echo
		head -$i questionbank.txt | tail -5  # display the 5 line of question_set.txt
		echo
		for j in `seq 10 -1 1` # ti
		do
		    echo -e "\rEnter the option $j: \c" 
		    read -t 1 answer # '-t' enable the time by 1 second & 'answer' taking the user input
		    if [ ${#answer} -ne 0 ]
		    then
			break
		    fi  
		done

		if [ ${#answer} -eq 1 ]  
		then
		echo "$answer" >> useranswers.txt  # user answer are storing inside the user_ans.txt file
	        else
		echo "Time out" >> useranswers.txt # if user not given any input then by default 'Timeout' will store inside file
		fi
		echo

	    done
        bash results.sh
	;;
    
	
        2)
	    exit
	;;
    esac
}
