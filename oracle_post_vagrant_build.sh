cat /vagrant/oracle_bash_profile.txt >> ~/.bash_profile
. ~/.bash_profile
cp /vagrant/linuxamd64_12c_database_* /tmp
cd /tmp/
unzip linuxamd64_12c_database_1of2.zip
unzip linuxamd64_12c_database_2of2.zip
cd /tmp/database/
./runInstaller -noconfig -silent -responseFile /vagrant/db_install.rsp

# cleanup
# rm -Rf /etc/oraInventory/*
# rm -Rf /u01/product/12.1.0/db_1/*
#
# final root commands
# /etc/oraInventory/orainstRoot.sh
# /u01/product/12.1.0/db_1/root.sh

