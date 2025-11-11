# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Box oficial Ubuntu 24.04 (Noble)
  config.vm.box = "ubuntu/noble64"

  # Nome da VM
  config.vm.hostname = "servidor-web"

  # Porta host 8080 -> guest 80 (Nginx)
  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

  # Sincroniza a pasta local ./site com /var/www/html na VM
  config.vm.synced_folder "./site", "/var/www/html", owner: "www-data", group: "www-data", create: true

  # Provisionamento (instala Nginx + Git e configura)
  config.vm.provision "shell", path: "provision.sh"

  # Recursos (opcional)
  config.vm.provider "virtualbox" do |vb|
    vb.name = "ServidorWeb-Nginx"
    vb.memory = 1024
    vb.cpus = 2
  end
end

