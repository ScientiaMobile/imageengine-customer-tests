#!/bin/sh

DOMAIN=$1
LB=$2

RESULT=`echo "" | openssl s_client -connect $LB:443 -servername $DOMAIN 2> /dev/null | grep $DOMAIN`
if [ $? == "0" ] 
then
   # get cert 
   CERT=`echo "" | openssl s_client -connect $LB:443 -servername $DOMAIN 2> /dev/null | openssl x509 -noout -dates| grep notAfter`
   echo $CERT
else
   exit 1
fi

