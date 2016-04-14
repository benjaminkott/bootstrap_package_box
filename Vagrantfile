unless Vagrant.has_plugin?("vagrant-hostsupdater")
  system "vagrant plugin install vagrant-hostsupdater"
  print "installed vagrant-hostsupdater, please rerun the command you executed"
  exit
end

unless Vagrant.has_plugin?("vagrant-vbguest")
  system "vagrant plugin install vagrant-vbguest"
  print "installed vagrant-vbguest, please rerun the command you executed"
  exit
end

unless Vagrant.has_plugin?("vagrant-triggers")
  system "vagrant plugin install vagrant-triggers"
  print "installed vagrant-triggers, please rerun the command you executed"
  exit
end

Vagrant.configure(2) do |config|

    config.vm.box = "ubuntu/trusty32"
    config.vm.define "app" do |app|
    
        app.vm.host_name = "bootstrap.dev"
        app.vm.network "private_network", ip: "192.168.50.11"
        app.vm.network "forwarded_port",  guest: 80,  host: 8080
        app.vm.network "forwarded_port",  guest: 443, host: 8443

        unless ((/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) == nil)
            app.vm.synced_folder ".", "/vagrant", type: "smb"
        else
            app.vm.synced_folder ".", "/vagrant", type: "nfs"
        end

        app.hostsupdater.aliases = ["bootstrap.dev.local", "log.dev.local", "phpmyadmin.dev.local"]

        app.vm.provision :puppet do |puppet|
            puppet.hiera_config_path = "puppet/hiera.yaml"
            puppet.manifests_path = "puppet/manifests"
            puppet.manifest_file = "web.pp"
            puppet.module_path = "puppet/modules"
        end

        app.vm.provider "virtualbox" do |v|
            v.memory = 1024
            v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
        end
    end

    config.trigger.before :up do
        run "git submodule update --init --recursive"
        run "composer install --ignore-platform-reqs"
    end

    config.trigger.after [:up, :resume, :provision] do
        system("open", "http://bootstrap.dev.local:8080")
    end
    
end