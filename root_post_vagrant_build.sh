cat /vagrant/root_bash_profile.txt >> ~/.bash_profile
. ~/.bash_profile
groupadd -g 1000 oinstall
useradd -G oinstall -u 2000 oracle
cd /etc/yum.repos.d
wget http://public-yum.oracle.com/public-yum-ol6.repo
wget http://public-yum.oracle.com/RPM-GPG-KEY-oracle-ol6 -O /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
yum -y install oracle-rdbms-server-12cR1-preinstall

mkdir -p /u01/product/12.1.0/db_1
mkdir -p /etc/oraInventory
chown -R oracle:oinstall /u01
chown -R oracle:oinstall /etc/oraInventory

cd /vagrant
rpm -ivh redhat-release-6Server-1.noarch.rpm


wget http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6-8.noarch.rpm
yum -y install rlwrap


