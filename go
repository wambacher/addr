#!/bin/bash
#
#set -x
WD=${PWD##*/}

mvn clean compile package install
RC=$?
if [ "$RC" -eq "0" ]; then
   sshpass -f ~/.jetty_passwd scp target/addr_$WD.war jetty@server3:/opt/jetty/jetty9/webapps/addr_dev.war
fi
