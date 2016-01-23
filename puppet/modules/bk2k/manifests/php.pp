define bk2k::php(

) {

    include php
    include php::dev
    include php::cli
    include php::apache
    include php::params
    include php::pear

    class {
        [
            'php::composer',
            'php::composer::auto_update'
        ]:
    }->
    exec { "set_path_for_composer_bin":
        command => 'echo \'PATH=$PATH:~/.composer/vendor/bin\' > /home/vagrant/.bashrc',
        path    => ["/bin/", "/usr/bin/"],
        user    => "vagrant"
    }
    package { ['imagemagick']:
        ensure => present;
    }
    class {
        [
            'php::extension::curl',
            'php::extension::mcrypt',
            'php::extension::mysql',
            'php::extension::redis',
            'php::extension::opcache',
            'php::extension::imagick',
            'php::extension::gd'
        ]:
        notify => Service['apache2'],
    }
    php::apache::config { 
        'max_execution_time=240':
    }
    php::apache::config { 
        'max_input_vars=1500':
    }
  
}