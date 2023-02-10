#Script Name: for
#By: Micahel J Hollender
#Date: 02/10/2023
#Purpose: Helps users create a shopping list
#Version: 1.0
echo "Enter items for a shopping list seperated by a space"
read shopping_list

for temp_variable in $shopping_list; do
echo $temp_variable >> shopping_list
done


#Reads the contents of shopping_list to screen
cat shopping_list

