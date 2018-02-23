#Archivo provision_for_apache común a los dos
source /vagrant/provision/provision-for-apache.sh

#Instalamos el servidor NFS
apt-get -y update
apt-get -y upgrade
apt-get -y install nfs-kernel-server

#Cambiamos los permisos del archivo a compartir
chown nobody:nogroup /var/www/html

#Editamos /etc/exports
echo " /var/www/html      192.168.33.12(rw,sync,no_root_squash,no_subtree_check)"  >> /etc/exports 

#Reiniciamos el servicio NFS
/etc/init.d/nfs-kernel-server restart