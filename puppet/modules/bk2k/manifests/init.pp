# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class bk2k {

    exec { 'add-apt-repository ppa:ondrej/php':
        command => '/usr/bin/add-apt-repository ppa:ondrej/php';
    }->
    exec { 'apt-get update':
        command => '/usr/bin/apt-get update';
    }->
    host { 'hostmachine':
        ip => '192.168.0.1';
    }->
    package { ['htop', 'tree', 'unzip', 'vim', 'sendmail', 'git', 'php7.0-mysql']:
        ensure => present;
    }

}
