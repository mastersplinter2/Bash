#Created By: Michael J. Hollender
#Created On: 02/10/2023
#Purpose: Create new end users through automatic Bash scripting.
#Version: 1.0

groupadd system_users
for i in `cat newend_user.txt|cut -d" " -f1`
do
password=`grep $i newend_user.txt|cut -d" " -f2`
uid=`grep $i newend_user.txt|cut -d" " -f3`
comment=`grep $i newend_user.txt|cut -d" " -f4,5,6`
gid=`grep $i newend_user.txt|cut -d" " -f7`
echo $i $password $uid $comment $gid
grep_ouput=`grep $i /etc/passwd`
if [ -z $grep_output ]; then
useradd -u $uid -c "$comment" -g $gid $i
echo $password | passwd $i --stdin;
mkdir /home/$i
chown $i /home/$i
chmod 0700 /home/$i
fi
done
