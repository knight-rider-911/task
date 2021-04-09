#!/bin/bash

if [[ LOG_NAME != "" ]]
  error_log=`cat $LOG_NAME | grep 500 | wc -l| tee log-$(date +%y%m%d)`
fi

if [[ ARCH_NGINX == "true" ]]
  find /var/log/nginx/  -type f -ctime +7 -exec tar -cvfz archive.tar.gz /var/log/nginx  {} + | tee log-$(date +%y%m%d)
fi