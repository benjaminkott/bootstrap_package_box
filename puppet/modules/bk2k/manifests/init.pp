# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class bk2k {

    exec { 'apt-get update':
        command => '/usr/bin/apt-get update';
    }->
    host { 'hostmachine':
        ip => '192.168.0.1';
    }->
    package { ['htop', 'tree', 'unzip', 'vim', 'sendmail', 'git', 'imagemagick']:
        ensure => present;
    }

}
