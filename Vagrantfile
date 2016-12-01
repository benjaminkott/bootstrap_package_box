# -*- mode: ruby -*-
# vi: set ft=ruby :

# Install Hostupdater Plugin
unless Vagrant.has_plugin?("vagrant-hostsupdater")
  system "vagrant plugin install vagrant-hostsupdater"
  print "Installed vagrant-hostsupdater, please rerun the command you executed"
  exit
end

# Install Triggers Plugin
unless Vagrant.has_plugin?("vagrant-triggers")
  system "vagrant plugin install vagrant-triggers"
  print "Installed vagrant-triggers, please rerun the command you executed"
  exit
end

# Vagrant Configuration
Vagrant.configure("2") do |config|

  # Use ubuntu as development environment
  config.vm.box = "bento/ubuntu-16.04"

  # Configure VM
  config.vm.define "app" do |app|

    # Set hostname
    app.vm.host_name = "bootstrap.dev"

    # Create a private network
    app.vm.network "private_network", ip: "192.168.50.11"

    # Add aliases
    app.hostsupdater.aliases = [
      "cms7.bootstrap.dev",
      "cms8.bootstrap.dev",
      "bootstrap.dev",
      "log.dev",
      "phpmyadmin.dev"
    ]

    # Set Synced Folders
    unless ((/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) == nil)
      app.vm.synced_folder ".", "/vagrant", type: "virtualbox"
    else
      app.vm.synced_folder ".", "/vagrant", type: "nfs"
    end

    # Configure VirtualBox
    app.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
      vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
    end

    # Install Puppet
    app.vm.provision "shell", inline: "apt-get install -y puppet;
      mkdir -p /etc/puppet/modules;
      puppet module install puppetlabs-apt --modulepath '/vagrant/puppet/modules';
      puppet module install puppetlabs-concat --modulepath '/vagrant/puppet/modules';
      puppet module install puppetlabs-mysql --modulepath '/vagrant/puppet/modules';
      puppet module install puppetlabs-apache --modulepath '/vagrant/puppet/modules';
      puppet module install mayflower-php --version 4.0.0-beta1 --modulepath '/vagrant/puppet/modules'"

    # Puppet provisioning
    app.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "web.pp"
      puppet.module_path = "puppet/modules"
    end

  end

end
