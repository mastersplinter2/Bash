#Script Name: pickanumber2.sh
#By: Michael J Hollender
#Date: 02/10/2023
#Purpose: Asks users to pick a random number as part of a game.
#Version: 1.0

echo -n "Pick a number from 1-100: "
read num
rand_num=1
let "rand_num = $RANDOM % 100 + 1"
while [ "$num" -lt "$rand_num" ] ; do
echo -n "Too low. Guess again: "
read num
	if [ "$num" -gt "$rand_num" ] ; then   
		echo -n "Too high. Guess again: " 
	read num	
	elif [ "$num" -eq "$rand_num" ] ; then
			echo "Yes. $rand_num is the number."
	fi
done	
