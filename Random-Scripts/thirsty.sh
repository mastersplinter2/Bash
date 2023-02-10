#Script Name: thirsty.sh
#By: Michael J Hollender
#Date: 02/10/2023
#Purpose: Asks users if they are thirsty and if so what do they want to drink.
#Version: 1.0

echo -n "Are you thirsty?"
read thirsty
while [ "$thirsty" = "No" ] || [ "$thirsty" = "no" ] ; do
echo -n "Its a yes or no question. Try again: " 
read thirsty
done
	if [ "$thirsty" = "Yes" ] || [ "$thirsty" = "yes" ] ; then
 	echo -n "What would you like to drink: "
 fi
   read drink 
   if [ "$drink" = "Water" ] || [ "$drink" = "water" ] ;  then
       echo "Clear crisp and refreshing."
   elif [ "$drink" = "Beer" ] || [ "$drink" = "beer" ] ; then
       echo "Let me see some id."
   elif [ "$drink" = "Wine" ] || [ "$drink" = "wine" ] ; then
       echo "one box or two."
   else  echo "Coming right up."
fi

