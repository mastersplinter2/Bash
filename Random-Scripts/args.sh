#Script Name: args
#By: Micahel J Hollender
#Date: 02/10/2023
#Purpose: To run command line arguements
#Version: 1.0

	for arg in $*; do
	echo "$arg is an argument"
	done
	echo "The number of arguments is $#"

