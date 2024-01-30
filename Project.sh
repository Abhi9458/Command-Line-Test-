#!/bin/bash

<<Doc
Name          : Abhilash Manohar Javali
Date          : 13-12-2022
Description   : 
Sample input  :
Sample output :
Doc

echo "
1-sign up
2-sign in 
3-exit"
read -p "Enter the choice: " choice
case $choice in
    1) bash Signup.sh
        ;;
    2) bash Signin.sh
        ;;
    3) exit 1
        ;;
esac
