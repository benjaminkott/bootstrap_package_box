###########################
### Plugin checks begin ###
###########################
$updated = 0

if Vagrant::Util::Platform.windows? then
    unless Vagrant.has_plugin?("vagrant-winnfsd")
        system "vagrant plugin install vagrant-winnfsd"
        $updated = 1
    end
end

unless Vagrant.has_plugin?("vagrant-bindfs")
    system "vagrant plugin install vagrant-bindfs"
    $updated = 1
end

unless Vagrant.has_plugin?("vagrant-hostsupdater")
  system "vagrant plugin install vagrant-hostsupdater"
  $updated = 1
end

unless Vagrant.has_plugin?("vagrant-vbguest")
  system "vagrant plugin install vagrant-vbguest"
  $updated = 1
end

if $updated > 0
    print "Your Vagrant-env installed some plugins."
    print "Please rerun the command you executed."
    exit
end


##########
### VM ###
##########
Vagrant.configure(2) do |config|
    config.vm.box = "bento/ubuntu-16.04"
    config.vm.define "app" do |app|

        # Set hostname
        app.vm.host_name = "bootstrap.dev"

        # Create a private network
        app.vm.network "private_network", ip: "192.168.50.11"

        # Configure VirtualBox
        app.vm.provider "virtualbox" do |v|
            v.memory = 1024
            v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
        end

        # Add aliases
        app.hostsupdater.aliases = [
            "cms7.bootstrap.dev",
            "cms8.bootstrap.dev",
            "cms9.bootstrap.dev",
            "log.dev",
            "phpmyadmin.dev"
        ]

        # Avoid warnings of missing tty (see http://foo-o-rama.com/vagrant--stdin-is-not-a-tty--fix.html)
        app.vm.provision "fix-no-tty", type: "shell" do |s|
            s.privileged = false
            s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
        end

        # Set Synced Folders
        if Vagrant::Util::Platform.windows? then
            app.vm.synced_folder './', '/vagrant', disabled: true
            app.vm.synced_folder ".", "/vagrant", id: "vagrant-root", type: "nfs"
            app.winnfsd.uid = 1000
            app.winnfsd.gid = 1000
            app.bindfs.default_options = {
                force_user:   'www-data',
                force_group:  'www-data',
                perms:        'u=rwX:g=rwX:o=rD'
            }
        else
            app.vm.synced_folder './', '/vagrant', disabled: true
            app.vm.synced_folder ".", "/var/nfs", type: "nfs"
            app.nfs.map_uid = Process.uid
            app.nfs.map_gid = Process.gid
            app.bindfs.bind_folder '/var/nfs', '/vagrant'
            app.bindfs.default_options = {
                force_user:   'www-data',
                force_group:  'www-data',
                perms:        'u=rwX:g=rwX:o=rD'
            }
        end

        # Install Puppet
        app.vm.provision "shell", inline: "
            apt-get update;
            apt-get install -y puppet;
            rm -rf /etc/puppet/modules;
            mkdir -p /etc/puppet/modules;
            cp -R /vagrant/puppet/custom/bk2k /etc/puppet/modules/bk2k
            puppet module install puppet-php;
            puppet module install puppetlabs-apt;
            puppet module install puppetlabs-apache;
            puppet module install puppetlabs-mysql;
            puppet module install saz-locales;
        "

        # Puppet provisioning
        app.vm.provision "puppet" do |puppet|
            puppet.manifests_path = "puppet/manifests"
            puppet.manifest_file = "web.pp"
        end

    end
end
