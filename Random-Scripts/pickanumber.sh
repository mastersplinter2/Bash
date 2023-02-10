#Script Name: pickanumber
#By: Michael J Hollender
#Date: 02/10/2023
#Purpose: Asks users to pick a number as part of a game.
#Version: 1.0

	echo "Pick a number from 1-10."
	read num
	rand_num=1
	let "rand_num = $RANDOM % 10 + 1"
	while [ "$num" != "$rand_num" ] ; do
	echo "Guess again!"
		read num
		if [ "$num" = "$rand_num" ] ; then
		echo "You picked correctly!"
		fi
	done
