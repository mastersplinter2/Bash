#Script Name: while
#By: Michael J Hollender
#Date: 02/10/2023
#Purpose: Asks users to enter a positive number
#Version: 1.0
echo -n "Enter a Positive Number"
read num
control=0
while [ "$control" -le "$num"  ] ;  
do
echo $control
let "control=control+1"
done

