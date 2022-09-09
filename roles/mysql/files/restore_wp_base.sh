#!/usr/bin/sh

DB=wordpress;
USER='admin'
PASS=rRxTh=YdFrwk3
DIR="/root/files/wordpress"

for s in `ls -1 $DIR`;
    do
    echo "--> $s restoring... ";
    zcat $DIR/$s | /usr/bin/mysql --user=$USER --password=$PASS $DB;
    done