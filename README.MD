This repo is to learn how to setup elastic using docker and ansible (or vagrant).
This repo is to learn how to setup elastic using docker and ansible (or vagrant).

Note that when installing docker websocket-client cant be 1.0 yet
docker needs to be added: sudo usermod -aG docker $USER
https://docs.docker.com/engine/install/linux-postinstall/


curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant

https://www.vagrantup.com/downloads
Need to install virtualbox as well
also need image of virtual machine from hashicorp:
https://app.vagrantup.com/centos/boxes/7
