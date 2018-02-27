#!/usr/bin/env bash

export DATAVAULT_HOME=/vagrant_datavault-home;
chmod 755 /vagrant_datavault-home/bin/start-worker.sh 
echo "update Users set id = 'dspeed2' where id = 'user30';" | mysql -u datavault datavault -pdatavault
/vagrant_datavault-home/bin/start-worker.sh 
