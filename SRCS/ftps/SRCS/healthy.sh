ps > test
cat test | grep telegraf > /dev/null 
p1=$?
cat test | grep vsftpd > /dev/null 
p2=$?

if [ $p1 == 1 ] || [ $p2 == 1 ]
then
    exit 1
fi
exit 0