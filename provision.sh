#!/usr/bin/env bash

db-setup () {
    echo "Setting up the CAS db"
    PASSWD=w00tums

    echo "Setting the root mysql password"
    mysqladmin --user=root password $PASSWD

    echo "Creating the FileQuirks database"
    mysqladmin --user=root --password=$PASSWD create TypesDB

    echo "Granting privileges to the 'filequirks' user on the CAS database"
    mysql -uroot --password=$PASSWD -e "GRANT ALL ON TypesDB.* TO 'filequirks'@'localhost' IDENTIFIED BY 'w00tums'"

    echo "Flushing privileges"
    mysqladmin --user=root --password=$PASSWD flush-privileges
}

apt-get update
apt-get install -q -y git curl vim
###apt-get install -q -y mysql-server
###db-setup
