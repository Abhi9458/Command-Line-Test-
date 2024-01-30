#!/bin/bash

<<Doc
Name          : Abhilash Manohar Javali
Date          : 23-12-20222
Description   : test page
Sample input  :
Sample output :
Doc


echo "
1-Take the test
2-Exit "

echo "Enter the choice: " # Promt the user for choice
read  test_input
case $test_input in
    1)bash test_page1.sh
        ;;
    2)exit
        ;;
esac 
