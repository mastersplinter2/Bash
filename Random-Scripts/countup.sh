#Script Name: countup
#By: Micahel J Hollender
#Date: 02/10/2023
#Purpose: Counts up from 0 to the current process ID. 
#Version: 1.0

i=0
echo "The pid is: $$."
while [ '1' ] ; do
	echo "$i"
	if [ "$i" -eq "$$" ] ; then
		exit
	fi
let "i=i+1"
done



