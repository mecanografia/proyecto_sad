#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install dpkg
wget http://download.virtualbox.org/virtualbox/5.0.40/virtualbox-5.0_5.0.40-115130~Ubuntu~xenial_amd64.deb
sudo dpkg -i virtualbox-5.0_5.0.40-115130~Ubuntu~xenial_amd64.deb
sudo apt-get -y upgrade
sudo apt-get -y -f install
sudo rm -Rf virtualbox-5.0_5.0.40-115130~Ubuntu~xenial_amd64.deb
wget https://releases.hashicorp.com/vagrant/2.0.2/vagrant_2.0.2_x86_64.deb
dpkg -i vagrant_2.0.2_x86_64.deb
sudo rm -Rf vagrant_2.0.2_x86_64.deb
sudo apt autoremove
sudo cd vagrant
sudo vagrant up
