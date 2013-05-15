#!/bin/bash
PASSWD=w00tums
cp /vagrant/my.cnf /etc/mysql/my.cnf
service mysql restart
mysqladmin --user=root --password=$PASSWD create TypesDB
mysql -uroot --password=$PASSWD -e "GRANT ALL ON TypesDB.* TO 'app'@'localhost' IDENTIFIED BY '$PASSWD'"
mysql -uroot --password=$PASSWD -e "GRANT ALL on TypesDB.* to app@'10.0.2.2' IDENTIFIED BY '$PASSWD'"
mysqladmin --user=root --password=$PASSWD flush-privileges
mysql -uroot --password=$PASSWD TypesDB < /vagrant/dump-may-2.sql
