Vagrant.configure(2) do |config|

    config.vm.box = "ubuntu/trusty32"
    config.vm.define "app" do |app|
    
        app.vm.host_name = "bootstrap.dev"
        app.vm.network "private_network", ip: "192.168.50.11"
        app.vm.network "forwarded_port",  guest: 80,  host: 8080
        app.vm.network "forwarded_port",  guest: 443, host: 8443
        
        app.vm.provision :puppet do |puppet|
            puppet.manifests_path = "puppet/manifests"
            puppet.manifest_file = "web.pp"
            puppet.module_path = "puppet/modules"
        end
        
        app.vm.provider "virtualbox" do |v|
            v.memory = 1024
            v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
        end

    end
    
end