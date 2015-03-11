#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "ADD EXTRA ALIAS VIA .bashrc"
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc
  #echo "GENERAL YUM UPDATE"
  #yum -y update
  #echo "INSTALL GIT"
  #yum -y install git
  echo "INSTALL VIM"
  yum -y -y install vim
  echo "INSTALL TREE"
  yum -y install tree
  echo "INSTALL UNZIP"
  yum  -y install unzip curl wget
  yum -y install perl
  echo "INSTALL SYSSTAT"
  yum -y install sysstat



else
  echo "already installed flag set : /home/vagrant/already-installed-flag"
fi


