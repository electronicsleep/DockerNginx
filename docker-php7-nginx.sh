#!/bin/bash
echo "Starting PHP7"
service php7.0-fpm start
echo "Starting Nginx"
echo "Location: http://docker.local:8000/index.html"
echo "Location: http://docker.local:8000/phpinfo.php"
echo "Location: http://docker.local:8000/chris.php"
/usr/sbin/nginx -g "daemon off;"
