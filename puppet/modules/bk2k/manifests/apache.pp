define bk2k::apache(
    $hostname                 = undef,
    $port                     = 80,
    $directory_allow_override = "None",
    $run_user                 = "vagrant",
    $run_group                = "vagrant",
    $create_log               = false,
    $create_phpmyadmin        = false,
    $serveraliases            = ''
) {

    file { "/var/www":
        ensure => "directory"
    }->
    file { "/var/www/${hostname}":
        ensure => link,
        target => "/vagrant/",
        force  => true;
    }
    file { "/var/www/${hostname}/web/fileadmin":
        ensure => link,
        target => "../assets/",
        force  => true;
    }
    class { 'apache':

    }
    exec { "ApacheUserChange" :
        command => "sed -i 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=${run_user}/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_USER=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => Package['apache'],
        notify  => Service["apache2"],
    }
    exec { "ApacheGroupChange" :
        command => "sed -i 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=${run_group}/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_GROUP=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => Package['apache'],
        notify  => Service["apache2"],
    }
    exec { "apache_logfile_permissions" :
        command => "chmod -R a+rX /var/log/apache2",
        path    => ["/bin/"],
        require => Package['apache'],
    }
    exec { "apache_logrotate_permissions" :
        command => "sed -i 's/640/644/' /etc/logrotate.d/apache2",
        path    => ["/bin/"],
        require => Package['apache'],
    }
    exec { "apache_lockfile_permissions" :
        command => "chown -R ${run_user}:${run_group} /var/lock/apache2",
        path    => ["/bin/"],
        require => Package['apache'],
    }
    exec { "restart_apache2":
        command => "/etc/init.d/apache2 restart"
    }
    apache::vhost { "${hostname}.dev.local.${port}":
        docroot                  => "/var/www/${hostname}/web",
        server_name              => "${hostname}.dev.local",
        template                 => "bk2k/apache/vhost.conf.erb",
        priority                 => 25,
        port                     => $port,
        docroot_owner            => $run_user,
        docroot_group            => $run_group,
        directory_allow_override => "${directory_allow_override}",
        serveraliases            => $serveraliases
    }
    apache::module { "rewrite":

    }
  
    #
    # Install PIMPMYLOG
    #
    if $create_log
    {
        file { "/var/www/log":
            ensure => "directory"
        }->
        apache::vhost { "log.dev.local.80":
            docroot                  => "/var/www/log",
            server_name              => "log.dev.local",
            template                 => "bk2k/apache/vhost.conf.erb",
            priority                 => 50,
            port                     => $port,
            docroot_owner            => $run_user,
            docroot_group            => $run_group,
            directory_allow_override => "All"
        }->
        exec { "composer_require_pimp_my_log":
            environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
            command     => "composer require \"potsky/pimp-my-log\"",
            path        => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
            cwd         => "/var/www/log"
        }->
        exec { "create_rights_for_log_folder":
            command => "chmod 777 /var/www/log",
            path    => ["/bin"]
        }->
        file { "/var/www/log/index.php":
            ensure => link,
            target => "/var/www/log/vendor/potsky/pimp-my-log/index.php",
            force  => true;
        }->
        file { "/var/www/log/config.user.php":
            ensure  => present,
            content => template("bk2k/pimpmylog/pimpmylog.php.erb")
        }->
        file { "/var/www/log/.htaccess":
            ensure  => present,
            content => template("bk2k/pimpmylog/pimpmylog.htaccess.erb")
        }
    }
  
    #
    # Install PHPMYADMIN
    #
    if $create_phpmyadmin
    {
        file { "/var/www/phpmyadmin":
            ensure => "directory"
        }->
        apache::vhost { "phpmyadmin.dev.local.80":
            docroot                  => "/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin",
            server_name              => "phpmyadmin.dev.local",
            template                 => "bk2k/apache/vhost.conf.erb",
            priority                 => 50,
            port                     => $port,
            docroot_owner            => $run_user,
            docroot_group            => $run_group,
            directory_allow_override => "All"
        }->
        exec { "composer_require_phpmyadmin":
            environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
            command     => "composer require \"phpmyadmin/phpmyadmin\"",
            path        => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
            cwd         => "/var/www/phpmyadmin",
            require     => Exec['set_path_for_composer_bin']
        }->
        file { "/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin/config.inc.php":
            ensure  => present,
            content => template("bk2k/phpmyadmin/phpmyadmin.config.erb")
        }
    }

}
