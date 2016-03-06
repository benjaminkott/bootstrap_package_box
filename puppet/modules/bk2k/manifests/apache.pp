define bk2k::apache(
    $hostname                 = undef,
    $port                     = 80,
    $create_log               = false
) {

    #
    # Apache
    #
    class { 'apache':
        user => 'vagrant',
        group => 'vagrant',
        default_mods => true,     
    } 
    include apache::mod::rewrite
    include apache::mod::proxy
    include apache::mod::proxy_http
    include apache::mod::fastcgi
    apache::mod { 'proxy_fcgi': }
    
    #
    # Install Bootstrap Package
    #
    file { "/var/www":
        ensure => "directory"
    }
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
    exec { "ApacheUserChange" :
        command => "sed -i 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=vagrant/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_USER=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => Package['apache2'],
        notify  => Service["apache2"],
    }
    exec { "ApacheGroupChange" :
        command => "sed -i 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=vagrant/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_GROUP=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => Package['apache2'],
        notify  => Service["apache2"],
    }
    exec { "apache_logfile_permissions" :
        command => "chmod -R a+rX /var/log/apache2",
        path    => ["/bin/"],
        require => Package['apache2'],
    }
    exec { "apache_logrotate_permissions" :
        command => "sed -i 's/640/644/' /etc/logrotate.d/apache2",
        path    => ["/bin/"],
        require => Package['apache2'],
    }
    exec { "fix_fastcgi_permissions" :
        command => "chown -R vagrant:vagrant /var/lib/apache2/fastcgi",
        path    => ["/bin/"],
        require => Package['apache2'],
    }
    apache::vhost { "${hostname}.dev.local.${port}":
        docroot             => "/var/www/${hostname}/web",
        servername          => "${hostname}.dev.local",
        priority            => false,
        port                => $port,
        docroot_owner       => "vagrant",
        docroot_group       => "vagrant",
        override            => 'All',        
        custom_fragment     => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/${hostname}/web/$1",
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
            docroot             => "/var/www/log",
            servername          => "log.dev.local",
            priority            => false,
            port                => $port,
            docroot_owner       => "vagrant",
            docroot_group       => "vagrant",
            override            => 'All',
            custom_fragment     => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/log/$1",
        }->
        exec { "composer_require_pimp_my_log":
            environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
            command     => "composer require \"potsky/pimp-my-log\"",
            path        => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
            cwd         => "/var/www/log"
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

}
