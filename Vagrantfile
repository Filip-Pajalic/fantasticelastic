# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "centos8"
    config.ssh.insert_key = false
    config.vm.synced_folder "." , "/vagrant", disabled: true
    config.vm.provider :virtualbox do |v|
        v.memory = 512
        v.linked_clone = true
    end

    config.vm.define "app1" do |app|
        comfig.vm.hostname = "orc-app1.test"
        app.vm.network :private_network, ip: ""
    end
    
    config.vm.define "app1" do |app|
        comfig.vm.hostname = "orc-app1.test"
        app.vm.network :private_network, ip: ""
    end
end