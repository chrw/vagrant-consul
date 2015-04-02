# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "server1" do |server1|
    server1.vm.provider "virtualbox" do |v|
      v.cpus = 1
	  v.memory = 256
	end
    server1.vm.hostname = "server1"
    server1.vm.box = "ubuntu/trusty64"
    server1.vm.box_check_update = true
    server1.vm.network "forwarded_port", guest: 80, host: 8080
    server1.vm.network "private_network", ip: "192.168.0.10"
    server1.vm.provision "puppet" do |puppet|
      #puppet.options = "--verbose --debug"
      #puppet.options = "--verbose"
      puppet.manifests_path    = "manifests"
      puppet.manifest_file     = "server1.pp"
      puppet.module_path       = "modules"
    end
  end
  config.vm.define "server2" do |server2|
    server2.vm.provider "virtualbox" do |v|
      v.cpus = 1
	  v.memory = 256
	end
    server2.vm.hostname = "server2"
    server2.vm.box = "ubuntu/trusty64"
    server2.vm.box_check_update = true
    server2.vm.network "private_network", ip: "192.168.0.11"
    server2.vm.provision "puppet" do |puppet|
      #puppet.options = "--verbose --debug"
      #puppet.options = "--verbose"
      puppet.manifests_path    = "manifests"
      puppet.manifest_file     = "server2.pp"
      puppet.module_path       = "modules"
    end
  end
  config.vm.define "server3" do |server3|
    server3.vm.provider "virtualbox" do |v|
      v.cpus = 1
	  v.memory = 256
	end
    server3.vm.hostname = "server3"
    server3.vm.box = "ubuntu/trusty64"
    server3.vm.box_check_update = true
    server3.vm.network "private_network", ip: "192.168.0.12"
    server3.vm.provision "puppet" do |puppet|
      #puppet.options = "--verbose --debug"
      #puppet.options = "--verbose"
      puppet.manifests_path    = "manifests"
      puppet.manifest_file     = "server3.pp"
      puppet.module_path       = "modules"
    end
  end
  config.vm.define "redis1" do |redis1|
    redis1.vm.provider "virtualbox" do |v|
      v.cpus = 1
	  v.memory = 256
	end
    redis1.vm.hostname = "redis1"
    redis1.vm.box = "ubuntu/trusty64"
    redis1.vm.box_check_update = true
    redis1.vm.network "private_network", ip: "192.168.0.100"
    redis1.vm.provision "puppet" do |puppet|
      #puppet.options = "--verbose --debug"
      #puppet.options = "--verbose"
      puppet.manifests_path    = "manifests"
      puppet.manifest_file     = "redis1.pp"
      puppet.module_path       = "modules"
    end
  end
  config.vm.define "redis2" do |redis2|
    redis2.vm.provider "virtualbox" do |v|
      v.cpus = 1
	  v.memory = 256
	end
    redis2.vm.hostname = "redis2"
    redis2.vm.box = "ubuntu/trusty64"
    redis2.vm.box_check_update = true
    redis2.vm.network "private_network", ip: "192.168.0.101"
    redis2.vm.provision "puppet" do |puppet|
      #puppet.options = "--verbose --debug"
      #puppet.options = "--verbose"
      puppet.manifests_path    = "manifests"
      puppet.manifest_file     = "redis2.pp"
      puppet.module_path       = "modules"
    end
  end
end
