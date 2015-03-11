
# project ora12base

The ora12base project, is a relevantly simple vagrant project to automate setup an Oracle 12c environment running on Centos 6.6.

### From your host machine

```
vagrant up
vagrant ssh
```

### Then run as root the pre-install 12c software (mostly rpm driven):

```
sudo -i
/vagrant/root_post_vagrant_build.sh
```

### Now we can install 12c software as oracle

```
su - oracle
/vagrant/oracle_post_vagrant_build.sh
```

### The final step of which is 12c software root.sh commands (i.e. as root again)

``` 
/etc/oraInventory/orainstRoot.sh
/u01/product/12.1.0/db_1/root.sh
```

### Now via dbca we can create a 12c database

```
rm /tmp/linuxamd64_12c_database_*zip
dbca -silent -createDatabase -responseFile  /vagrant/dbca.rsp
```

### note if you have issues and need to cleanup after any 12c software failures

```
rm -Rf /etc/oraInventory/*
rm -Rf /u01/product/12.1.0/db_1/*
```





   

