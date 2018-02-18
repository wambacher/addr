#!/bin/bash
#
#set -x
WD=${PWD##*/}

ls -la src/main/webapp/index.jsp
mvn clean compile package install
RC=$?
if [ "$RC" -eq "0" ]; then
   sshpass -f ~/.jetty_passwd scp target/addr_$WD.war jetty@server3:/opt/jetty/jetty9/webapps/addr$1.war
fi
