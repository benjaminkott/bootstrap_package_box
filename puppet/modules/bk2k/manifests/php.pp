define bk2k::php(

) {

    class { '::php::globals':
        php_version => '7.0',
        config_root => '/etc/php/7.0',
    }->
    class { '::php':
        composer => true,
        settings => {
            'PHP/max_execution_time'  => '240',
            'PHP/max_input_vars'      => '1500',
            'Date/date.timezone'      => 'Europe/Berlin',
        },
        extensions => {
            zip => { },
            mysqli => { },
            curl => { },
            mbstring => { },
            soap => { },
            gd => { },
            imagick => { },
        },
    }->
    exec { "set_path_for_composer_bin":
        command => 'echo \'PATH=$PATH:~/.composer/vendor/bin\' > /home/vagrant/.bashrc',
        path    => ["/bin/", "/usr/bin/"],
        user    => "vagrant"
    }
  
}