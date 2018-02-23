#!/bin/bash
# Retrieve new lists of packages
apt-get update

# Install Apache and PHP packages
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql
/etc/init.d/apache2 restart

# Enabling modules
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests

# Configure Apache as a Reverse Proxy 
cp /vagrant/config/000-default.conf /etc/apache2/sites-enabled

# Restarting Apache
/etc/init.d/apache2 restart