# -*- mode: ruby -*- 
# vi: set ft=ruby : vsa
Vagrant.configure(2) do |config| 
   config.vm.box = "centos/7" 
   config.vm.box_version = "2004.01" 
   config.vm.provider "virtualbox" do |v| 
   v.memory = 256 
   v.cpus = 1
   end
   config.vm.define "reposrv" do |reposrv| 
      reposrv.vm.network "private_network", ip: "192.168.50.10",  virtualbox__intnet: "net1" 
      reposrv.vm.hostname = "reposrv"
      reposrv.vm.provision :file, source: './scripts', destination: '/home/vagrant/scripts'
      # reposrv.vm.provision "shell", inline: <<-SHELL
      #    yum update
      #    yum install -y \
      #       redhat-lsb-core \
      #       wget \
      #       rpmdevtools \
      #       rpm-build \
      #       createrepo \
      #       yum-utils \
      #       gcc
      #    sudo chmod u+x ./scripts/*.sh
      # SHELL
      reposrv.vm.provision "shell", path: "./scripts/script_reposrv_install_tools.sh"
      reposrv.vm.provision "shell", path: "./scripts/script_reposrv_build_nginx.sh"
      reposrv.vm.provision "shell", path: "./scripts/script_reposrv_create_repo.sh"
   end
   config.vm.synced_folder '.', '/vagrant', disabled: true

   config.vm.define "repoclient" do |repoclient| 
      repoclient.vm.network "private_network", ip: "192.168.50.11",  virtualbox__intnet: "net1" 
      repoclient.vm.hostname = "repoclient" 
      repoclient.vm.provision :file, source: './scripts', destination: '/home/vagrant/scripts'
      repoclient.vm.provision "shell", path: "./scripts/script_repoclient.sh"
   end
   config.vm.synced_folder '.', '/vagrant', disabled: true
end 