#!/bin/bash
PASSWD=w00tums
mysqladmin --user=root --password=$PASSWD create TypesDB
mysql -uroot --password=$PASSWD -e "GRANT ALL ON TypesDB.* TO 'app'@'localhost' IDENTIFIED BY 'w00tums'"
mysql -uroot --password=$PASSWD -e "GRANT ALL on TypesDB.* to app@'10.0.2.2' IDENTIFIED BY 'w00tums'"
mysqladmin --user=root --password=$PASSWD flush-privileges