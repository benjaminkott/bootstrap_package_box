define bk2k::apache() {

    # 
    # Prepare Filesystem
    #
    file { "/var/www":
        ensure => "directory"
    }->
    file { "/var/www/cms7.bootstrap.dev":
        ensure => link,
        target => "/vagrant/www/cms7",
        force  => true;
    }->
    file { "/var/www/cms7.bootstrap.dev/web/fileadmin":
        ensure => link,
        target => "/vagrant/assets",
        force  => true;
    }->
    file { "/var/www/cms8.bootstrap.dev":
        ensure => link,
        target => "/vagrant/www/cms8",
        force  => true;
    }->
    file { "/var/www/cms8.bootstrap.dev/web/fileadmin":
        ensure => link,
        target => "/vagrant/assets",
        force  => true;
    }


    # 
    # Install Apache
    #
    class { 'apache':
        user => 'vagrant',
        group => 'vagrant',
        default_vhost => false,
        default_mods => true
    }
    include apache::mod::rewrite
    include apache::mod::proxy
    include apache::mod::proxy_http
    include apache::mod::fastcgi
    apache::mod { 'proxy_fcgi': }


    #
    # Fix Permissions and User
    #
    exec { "ApacheUserChange" :
        command => "sed -i 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=vagrant/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_USER=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => Package['apache2'],
        notify  => Service["apache2"],
    }->
    exec { "ApacheGroupChange" :
        command => "sed -i 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=vagrant/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_GROUP=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => Package['apache2'],
        notify  => Service["apache2"],
    }->
    exec { "apache_logfile_permissions":
        command => "chown -R vagrant.vagrant apache2/",
        path    => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
        cwd     => "/var/log/"
    }->
    exec { "apache_logrotate_permissions" :
        command => "sed -i 's/640/644/' /etc/logrotate.d/apache2",
        path    => ["/bin/"],
        require => Package['apache2'],
    }->
    exec { "fix_fastcgi_permissions" :
        command => "chown -R vagrant:vagrant /var/lib/apache2/fastcgi",
        path    => ["/bin/"],
        require => Package['apache2'],
    }


    #
    # Install hosts for application
    #
    apache::vhost { "cms7.bootstrap.dev.80":
        docroot             => "/var/www/cms7.bootstrap.dev/web",
        servername          => "cms7.bootstrap.dev",
        priority            => false,
        port                => 80,
        docroot_owner       => "vagrant",
        docroot_group       => "vagrant",
        override            => 'All',
        setenv              => ["TYPO3_CONTEXT Development"],
        custom_fragment     => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/cms7.bootstrap.dev/web/$1",
    }->
    apache::vhost { "cms8.bootstrap.dev.80":
        docroot             => "/var/www/cms8.bootstrap.dev/web",
        servername          => "cms8.bootstrap.dev",
        priority            => false,
        port                => 80,
        docroot_owner       => "vagrant",
        docroot_group       => "vagrant",
        override            => 'All',
        serveraliases       => [
            'bootstrap.dev'
        ],
        setenv              => ["TYPO3_CONTEXT Development"],
        custom_fragment     => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/cms8.bootstrap.dev/web/$1",
    }


    #
    # Install PIMPMYLOG
    #
    file { "/var/www/log":
        ensure => "directory"
    }->
    exec { "composer_require_pimp_my_log":
        environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
        command     => "composer require \"potsky/pimp-my-log\"",
        path        => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
        cwd         => "/var/www/log",
        require     => Exec['set_path_for_composer_bin'],
    }->
    file { "/var/www/log/data":
        ensure => link,
        target => "/var/www/log/vendor/potsky/pimp-my-log",
        force  => true;
    }->
    file { "/var/www/log/config.user.php":
        ensure  => present,
        content => template("bk2k/pimpmylog/pimpmylog.php.erb"),
    }->  
    apache::vhost { "log.dev.80":
        docroot             => "/var/www/log/data",
        servername          => "log.dev",
        priority            => false,
        port                => 80,
        docroot_owner       => "vagrant",
        docroot_group       => "vagrant",
        override            => 'All',
        custom_fragment     => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/log/data/$1",
    }


    #
    # Install PHPMYADMIN
    #
    file { "/var/www/phpmyadmin":
        ensure => "directory"
    }->
    exec { "composer_require_phpmyadmin":
        environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
        command     => "composer require \"phpmyadmin/phpmyadmin\"",
        path        => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
        cwd         => "/var/www/phpmyadmin",
        unless      => "test -d /var/www/phpmyadmin/vendor/",
        require     => Exec['set_path_for_composer_bin'],
    }->
    apache::vhost { "phpmyadmin.dev.80":
        docroot             => "/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin",
        servername          => "phpmyadmin.dev",
        priority            => false,
        port                => 80,
        docroot_owner       => "vagrant",
        docroot_group       => "vagrant",
        override            => 'All',
        custom_fragment     => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin/$1",
    }


}
