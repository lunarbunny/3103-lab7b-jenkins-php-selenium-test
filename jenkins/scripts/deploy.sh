#!/usr/bin/env sh

set -x
docker container stop my-apache-php-app || true
docker container rm my-apache-php-app || true
docker run -d -p 80:80 --name my-apache-php-app -v ~/Downloads/jenkins-php-selenium-test:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

