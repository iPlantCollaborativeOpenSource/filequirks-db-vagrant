## FileQuirks TypesDB

This is a Vagrant (http://www.vagrantup.com/) project that allows users to get FileQuirk's database up and running fairly easily. It's not as fully automated as it should be, yet, but it will get there.

This repository contains the latest MySQL dump that is also available here:

http://webservices.genesilico.pl/index.php?option=com_content&view=article&id=5&Itemid=8

## Installation

* Install VirtualBox: https://www.virtualbox.org/

* Install Vagrant: http://www.vagrantup.com/

* Check out this repository

* In your local checkout, run 'vagrant up'

* Once the VM is up and running, run 'vagrant ssh'

* Inside the VM, run 'sudo apt-get install mysql-server-5.5'

* Inside the VM, run 'sudo bash /vagrant/createdb.sh'

Work is ongoing to get the functionality in the createdb.sh script included in the provision.sh script. Once that's working, running 'vagrant up' will be the last step you have to do. The only issue is that the installation of MySQL 5.5 requires an interactive step.

Do NOT run this on a production system. The password for the database is included in the scripts in this repo. This is purely meant to enable ongoing development of FileQuirks.

The Vagrantfile will forward your local port 3306 to port 3306 in the VM.

## Contributors

Original Authors:

* Piotr Iwaniuk
* Jerzy Orlowski
* Jakub Jopek
* Janusz M. Bujnicki

For more information see the following sites:

* http://filequirks.genesilico.pl/
* http://iimcb.genesilico.pl/