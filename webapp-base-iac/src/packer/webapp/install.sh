#!/usr/bin/env bash
set -euxo pipefail

mkdir -p /var/log/php

apt-get update
apt-get install -y wget unzip ca-certificates apt-transport-https
wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O-  | apt-key add -
echo "deb https://packages.sury.org/php/ jessie main" | tee /etc/apt/sources.list.d/php.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" | tee -a /etc/apt/sources.list.d/php.list

apt-get update
apt-get -y install supervisor nginx
apt-get -y install php7.2 php7.2-fpm php7.2-xml php7.2-zip php7.2-curl

mkdir /var/webapp
chown -R www-data:www-data /var/webapp
