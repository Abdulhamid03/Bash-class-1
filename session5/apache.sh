#!/bin/bash

#installing apache
systemctl status httpd > /dev/null || dnf install httpd -y > /dev/null

if [ $# != 1 ]; then 
	read -p "enter url address to template: " temp

fi

curl -O $temp --output-dir /tmp/ > /dev/null
zipfile=$(find /tmp/ -name *.zp) 
unzip $zipfile -d /tmp/ && rm -rf $zipfile
xfile=$(echo $zipfile | awk -F "/" '{ print $3 }' | awk -F "." '{ print$1 }')


for dir in $(ls /tmp/); do 
	if [ "$dir" =~ "$xfile" ]; then 
	echo "1 matched"
        mv /tmp/$dir/* /var/www/html/
   fi

done




