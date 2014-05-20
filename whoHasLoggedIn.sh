echo " Enter username :\c"

read logname
# trying to find if the user exists or not

grep "$logname" /etc/passwd > /dev/null

# /dev/null redirects the output to /dev/null instead of a file 
if [ $? -eq 0 ]
then 
   echo "Wait as the user exists ..." 
else 
   echo " The user $logname does not exists.User $logname not found "
   exit
fi 


time=0

while true
do

      who | grep "$logname" > /dev/null     # Who tells users logged in currently 
      if [ $? -eq 0 ]
      then
            echo "$logname has logged in."
            if [ $time -ne 0 ]
            then
                 echo "$logname was $time minutes late in logging in "
            
            else 
               echo " Time is $time"
            fi 
            exit
       else
           time=`expr $time + 1`
           sleep 60 # check again after 60 seconds 
       fi # outer if block   

done

 # if exit status is 0 then the grep could find the user in output of who else the user has not logged in

