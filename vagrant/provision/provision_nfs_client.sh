#Archivo provision_for_apache
source /vagrant/provision/provision-for-apache.sh

#Instalamos el cliente NFS
apt-get -y update
apt-get -y upgrade
apt-get -y install nfs-common

#Creamos el punto de montaje
mount 192.168.33.11:/var/www/html /var/www/html

#Editamos fstab
echo "192.168.33.11:/var/www/html /var/www/html  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0" >> /etc/fstab