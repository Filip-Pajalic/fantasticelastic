# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "centos/8"
    config.vm.network :private_network, ip: "192.168.33.39"
    config.vm.hostname = "elastic.test"
    config.ssh.insert_key = false
    config.vm.provider :virtualbox do |v|
        v.name = "elastic.test"
        v.memory = 512
        v.cpus = 2
        v.linked_clone = true
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/main.yml"
    end
end