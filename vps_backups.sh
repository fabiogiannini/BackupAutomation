#!/bin/sh

ssh root@myvps.com -p 1122 "/usr/bin/mysqldump dbname -u dbuser --password=mysqlpassword -h 127.0.0.1 | /bin/gzip > /backup/mysql/mysql-dbname-`date +\%y\%m\%d`.sql.gz"
ssh root@myvps.com -p 1122 "tar -czf /backup/files/site-`date '+%y%m%d'`.tar.gz /var/www/html"

scp -P 1122 root@myvps.com:/backup/mysql/mysql-dbname-`date +\%y\%m\%d`.sql.gz /backup/mysql/mysql-dbname-`date +\%y\%m\%d`.sql.gz
scp -P 1122 root@myvps.com:/backup/files/site-`date '+%y%m%d'`.tar.gz /backup/files/site-`date '+%y%m%d'`.tar.gz

ssh root@myvps.com -p 1122 "rm -f /backup/mysql/*.*"
ssh root@myvps.com -p 1122 "rm -f /backup/files/*.*"
