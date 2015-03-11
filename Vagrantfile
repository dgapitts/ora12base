# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "opscode_centos-6.6_chef-provisionerless.box"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.6_chef-provisionerless.box"
  config.vm.network "public_network", ip: "192.168.0.17"
  config.vm.host_name = "ora12c66"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4028"
  end
  config.vm.provision :shell, :path => "provision.sh"
end
