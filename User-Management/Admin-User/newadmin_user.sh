#Created By: Michael J. Hollender
#Created On: 02/10/2023
#Purpose: Create new admin users through automatic Bash scripting.
#Version: 1.0
for i in `cat newadmin_user.txt|cut -d" " -f1`
do
password=`grep $i newadmin_user.txt|cut -d" " -f2`
uid=`grep $i newadmin_user.txt|cut -d" " -f3`
comment=`grep $i newadmin_user.txt|cut -d" " -f4,5,6`
gid=`grep $i newadmin_user.txt|cut -d" " -f7`
group=`grep $i newadmin_user.txt|cut -d" " -f8`
echo $i $password $uid $comment $gid $group
grep_ouput=`grep $i /etc/passwd`
if [ -z $grep_output ]; then
useradd -u $uid -c "$comment" -U -G $group $i
echo $password | passwd $i --stdin;
mkdir /home/$i
chown $i /home/$i
chmod 0700 /home/$i
fi
done

