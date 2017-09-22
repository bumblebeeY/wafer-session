#!/bin/sh
 cd /opt/lampp/htdocs/
 rm -f mina_auth.tar.gz
 dayString=$(date +%y%m%d)
 wget 'http://mina-1252789078.costj.myqcloud.com/mina_auth.tar.gz'
 rm -rf ${dayString}
 mkdir ${dayString}
 mv ./mina_auth ./${dayString}/mina_auth_bak
 tar -xzvf mina_auth.tar.gz
 cp -r -f ./${dayString}/mina_auth_bak/system/db/db.ini ./mina_auth/system/db/db.ini
