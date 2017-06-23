define bk2k::php(
    $run_user  = "www-data",
    $run_group = "www-data",
    $version    = '7.0',
    $additional_extensions = {},
    $global_extensions = {
        curl        => { },
        zip         => { },
        mcrypt      => { },
        mysqli      => { },
        mbstring    => { },
        soap        => { },
        gd          => { },
        imagick     => { },
        ssh2        => { },
        imap        => { },
    }
) {

    notify { "Install and Configure PHP":
    }->
    class { '::php::globals':
        php_version => "$version",
        config_root => "/etc/php/$version",
    }->
    class { '::php':
        composer        => true,
        manage_repos    => true,
        fpm             => true,
        settings        => {
            'PHP/opcache.enable' => true,
            'PHP/opcache.enable_cli' => true,
            'PHP/opcache.memory_consumption' => '128',
            'PHP/max_execution_time' => '240',
            'PHP/max_input_vars' => '1500',
            'PHP/post_max_size' => '32M',
            'PHP/upload_max_filesize' => '32M',
            'PHP/open_basedir' => '',
            'Date/date.timezone' => 'Europe/Berlin',
        },
        log_owner       => $run_user,
        log_group       => $run_group,
        extensions      => merge($global_extensions, $additional_extensions),
    }->
    file_line { 'set_path_for_composer_bin':
        ensure  => present,
        path    => '/home/vagrant/.bashrc',
        line    => 'PATH=$PATH:~/.composer/vendor/bin',
        require => File['/usr/local/bin/composer'],
    }->
    file { "/etc/php/$version/mods-available/xdebug.ini":
        ensure  => present,
        replace => 'yes',
        content => template('bk2k/php/xdebug.ini.erb'),
    }->
    notify {'Set server language php':}
}
