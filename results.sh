#!/bin/bash

<<Doc
Name          : Abhilash Manohar Javali
Date          :24-12-2022
Description   : result page
Sample input  :
Sample output :
Doc

echo -e "                                                                        "
echo -e "\033[92m---------------------Result Page-----------------------\033[0m"
echo -e "                                                                          "

correct_ans=(`cat correctanswer.txt`) 
    #correct_ans1=(`cat correctanswer.txt`) 
    user_ans=(`tail -10 useranswers.txt`)   
    line=`cat questionbank.txt | wc -l`

    for j in `seq 0 $((${#correct_ans[@]}-1))`
    do
         for i in `seq 5 5 50`
          do
              echo
       head -$i questionbank.txt | tail -5

 
        if [ ${correct_ans[j]} == ${user_ans[j]} ]
        then 
        echo -e "\e[32m Correct answer\e[0m" 
       echo 
        tot=`expr $tot + 1`
       break
    else
        echo -e "\e[31m Wrong Answer  \e[0m"
        break
        echo
    fi

done
done
echo -e "\e[32mMarks: $tot/10\033[0m"
