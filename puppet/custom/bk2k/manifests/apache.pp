define bk2k::apache(
    $run_user                       = "www-data",
    $run_group                      = "www-data",
    $vhost_custom_fragment_prefix   = "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/"
) {


    #
    # Prepare Filesystem
    #
    file { "/var/www":
        ensure => "directory",
        owner   => "${run_user}",
        group   => "${run_group}",
        mode    => '0775'
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
    }->
    file { "/var/www/cms9.bootstrap.dev":
        ensure => link,
        target => "/vagrant/www/cms9",
        force  => true;
    }->
    file { "/var/www/cms9.bootstrap.dev/web/fileadmin":
        ensure => link,
        target => "/vagrant/assets",
        force  => true;
    }


    #
    # Install Apache
    #
    notify { "Install Apache":
    }->
    class { 'apache':
        user => $run_user,
        group => $run_group,
        default_vhost => false,
        default_mods  => true,
        manage_group  => false,
        manage_user   => false
    }
    include apache::mod::alias
    include apache::mod::autoindex
    include apache::mod::deflate
    include apache::mod::expires
    include apache::mod::filter
    include apache::mod::headers
    include apache::mod::setenvif
    include apache::mod::mime
    include apache::mod::proxy
    include apache::mod::proxy_http
    include apache::mod::rewrite
    apache::mod { 'proxy_fcgi':
    }->
    file { "check fastcgi directory" :
        ensure  => 'directory',
        path    => '/var/lib/apache2/fastcgi',
        owner   => "${run_user}",
        group   => "${run_group}",
        recurse => true,
        require => Package['apache2'],
    }


    #
    # Fix Permissions and User
    #
    notify { "Set Apache User and Group to ${run_user}.${run_group}":
    }->
    exec { "ApacheUserChange" :
        command => "sed -i 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=${run_user}/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_USER=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => [
            Package['apache2'],
        ],
        notify  => Service["apache2"],
    }->
    exec { "ApacheGroupChange" :
        command => "sed -i 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=${run_group}/' /etc/apache2/envvars",
        onlyif  => "grep -c 'APACHE_RUN_GROUP=www-data' /etc/apache2/envvars",
        path    => ["/bin/"],
        require => [
            Package['apache2'],
        ],
        notify  => Service["apache2"],
    }


    #
    # Install hosts for cms7.bootstrap.dev
    #
    notify { "Install VirtualHost for default Appplication under cms7.bootstrap.dev":
    } ->
    apache::vhost { "cms7.bootstrap.dev.80":
        docroot         => "/var/www/cms7.bootstrap.dev/web",
        servername      => "cms7.bootstrap.dev",
        priority        => false,
        port            => 80,
        docroot_owner   => $run_user,
        docroot_group   => $run_group,
        setenv          => ["TYPO3_CONTEXT Development"],
        override        => ["All"],
        custom_fragment => "${vhost_custom_fragment_prefix}cms7.bootstrap.dev/web/$1",
        serveraliases   => $serveraliases,
    } ->
    apache::vhost { "cms7.bootstrap.dev.443":
        docroot         => "/var/www/cms7.bootstrap.dev/web",
        servername      => "cms7.bootstrap.dev",
        priority        => false,
        port            => 443,
        docroot_owner   => $run_user,
        docroot_group   => $run_group,
        setenv          => ["TYPO3_CONTEXT Development"],
        override        => ["All"],
        custom_fragment => "${vhost_custom_fragment_prefix}cms7.bootstrap.dev/web/$1",
        serveraliases   => $serveraliases,
        ssl             => true,
    } ->
    notify { "Installed VirtualHost for default Appplication under cms7.bootstrap.dev":
        notify => Service["apache2"],
    }


    #
    # Install hosts for cms8.bootstrap.dev
    #
    notify { "Install VirtualHost for default Appplication under cms8.bootstrap.dev":
    } ->
    apache::vhost { "cms8.bootstrap.dev.80":
        docroot         => "/var/www/cms8.bootstrap.dev/web",
        servername      => "cms8.bootstrap.dev",
        priority        => false,
        port            => 80,
        docroot_owner   => $run_user,
        docroot_group   => $run_group,
        setenv          => ["TYPO3_CONTEXT Development"],
        override        => ["All"],
        custom_fragment => "${vhost_custom_fragment_prefix}cms8.bootstrap.dev/web/$1",
        serveraliases   => $serveraliases,
    } ->
    apache::vhost { "cms8.bootstrap.dev.443":
        docroot         => "/var/www/cms8.bootstrap.dev/web",
        servername      => "cms8.bootstrap.dev",
        priority        => false,
        port            => 443,
        docroot_owner   => $run_user,
        docroot_group   => $run_group,
        setenv          => ["TYPO3_CONTEXT Development"],
        override        => ["All"],
        custom_fragment => "${vhost_custom_fragment_prefix}cms8.bootstrap.dev/web/$1",
        serveraliases   => $serveraliases,
        ssl             => true,
    } ->
    notify { "Installed VirtualHost for default Appplication under cms8.bootstrap.dev":
        notify => Service["apache2"],
    }


    #
    # Install hosts for cms9.bootstrap.dev
    #
    notify { "Install VirtualHost for default Appplication under cms9.bootstrap.dev":
    } ->
    apache::vhost { "cms9.bootstrap.dev.80":
        docroot         => "/var/www/cms9.bootstrap.dev/web",
        servername      => "cms9.bootstrap.dev",
        priority        => false,
        port            => 80,
        docroot_owner   => $run_user,
        docroot_group   => $run_group,
        setenv          => ["TYPO3_CONTEXT Development"],
        override        => ["All"],
        custom_fragment => "${vhost_custom_fragment_prefix}cms9.bootstrap.dev/web/$1",
        serveraliases   => $serveraliases,
    } ->
    apache::vhost { "cms9.bootstrap.dev.443":
        docroot         => "/var/www/cms9.bootstrap.dev/web",
        servername      => "cms9.bootstrap.dev",
        priority        => false,
        port            => 443,
        docroot_owner   => $run_user,
        docroot_group   => $run_group,
        setenv          => ["TYPO3_CONTEXT Development"],
        override        => ["All"],
        custom_fragment => "${vhost_custom_fragment_prefix}cms9.bootstrap.dev/web/$1",
        serveraliases   => $serveraliases,
        ssl             => true,
    } ->
    notify { "Installed VirtualHost for default Appplication under cms9.bootstrap.dev":
        notify => Service["apache2"],
    }


    #
    # Install PHPMYADMIN
    #
    notify { "Install PHPMyAdmin under phpmyadmin.dev.local":
    }->
    file { "/var/www/phpmyadmin":
        ensure => "directory",
        owner  => $run_user,
        group  => $run_group,
        mode    => '0775'
    }->
    exec { "composer_require_phpmyadmin":
        user        => $run_user,
        environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
        command     => "composer require \"phpmyadmin/phpmyadmin\"",
        path        => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
        cwd         => "/var/www/phpmyadmin",
        unless      => "test -d /var/www/phpmyadmin/vendor/",
        require     => [
            File_line['set_path_for_composer_bin'],
        ],
    }->
    apache::vhost { "phpmyadmin.dev.local.80":
        docroot             => "/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin",
        servername          => "phpmyadmin.dev.local",
        priority            => false,
        port                => 80,
        docroot_owner       => $run_user,
        docroot_group       => $run_group,
        override            => ["All"],
        custom_fragment     => "${vhost_custom_fragment_prefix}phpmyadmin/vendor/phpmyadmin/phpmyadmin/$1",
    }
}
