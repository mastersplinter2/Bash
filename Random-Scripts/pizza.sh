#Script Name: Pizza
#By Micael J Hollender
#Date: 02/10/2023
#Purpose: Asks users if they like pizza and if so what toppings do they like among four variables.#Version: 1.0
 echo "Do you like pizza?"
  read dylp
  while [ "$dylp" = "No" ] || [ "$dylp" = "no" ] ; do
   exit
  done
if [ "$dylp" = "Yes" ] || [ "$dylp" = "yes" ] ; then 
   echo "What is your favorite topping?"
fi     
   read wiyft
   if [ "$wiyft" = "Pepperoni" ] || [ "$wiyft" = "pepperoni" ] ;  then 
       echo "I love pepperoni."
   elif [ "$wiyft" = "Sausage" ] || [ "$wiyft" = "sausage" ] ; then
       echo "Sausage is good but pepperoni is better"
   elif [ "$wiyft" = "Mushroom" ] || [ "$wiyft" = "mushroom" ] ; then
       echo "Mushroom is good also."
   elif [ "$wiyft" = "Cheese" ] || [ "$wiyft" = "cheese" ] ; then
       echo "You should add a topping."
fi
   
