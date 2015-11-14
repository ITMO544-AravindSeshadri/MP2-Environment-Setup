#!/bin/bash
sudo apt-get update && sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl
touch /tmp/hello.txt
echo "Hello" > /tmp/hello.txt
cd /var/www/html
sudo git clone https://github.com/ITMO544-AravindSeshadri/MP2-Application-Setup.git
sudo mv -v MP2-Application-Setup/* /var/www/html
sudo rm -rf /var/www/html/MP2-Application-Setup
cd /home/controller
sudo curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php
PW=letmein
export PW
