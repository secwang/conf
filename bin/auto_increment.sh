#!/bin/bash
users=$(echo `users`)
echo "user name is" $users

start_number=1

if [ "$users" == "secwang" ]
then
   start_number=100000
   echo "your auto_increment is " $start_number

elif [ "$users" == "zgy" ]
then
    $start_number=200000
    echo "your auto_increment is " $start_number
elif [ "$users" == "wangmin" ]
then
    $start_number=300000
    echo "your auto_increment is " $start_number
fi

update_string=" ALTER TABLE payment_bindcards AUTO_INCREMENT = number;
 ALTER TABLE payment_migrate_users_log AUTO_INCREMENT = number;
 ALTER TABLE payment_resetpasses AUTO_INCREMENT = number;
 ALTER TABLE payment_syncloans AUTO_INCREMENT = number;
 ALTER TABLE payment_syncloans AUTO_INCREMENT = number;
 ALTER TABLE payment_syncusers AUTO_INCREMENT = number;
 ALTER TABLE payment_syncusers AUTO_INCREMENT = number;
 ALTER TABLE payment_umbpay_get_info AUTO_INCREMENT = number;
 ALTER TABLE payment_umbpays AUTO_INCREMENT = number;
 ALTER TABLE payment_unbindcards AUTO_INCREMENT = number;"

SED_ARG="-e 's/number/$start_number/g'"

update_statement=$(echo $update_string | eval sed "$SED_ARG")

echo $update_statement | mysql -u demo -pdemo -A rui_site
