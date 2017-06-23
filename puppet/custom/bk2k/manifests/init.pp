# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class bk2k {

    notify { "Initialize":
    }->
    host { 'hostmachine':
        ip => '192.168.0.1';
    }->
    package {
        [
            'htop',
            'tree',
            'unzip',
            'vim',
            'sendmail',
            'git',
            'imagemagick',
            'aptitude',
            'mc'
        ]:
        ensure => present;
    }->

    ## Add aliases
    notify { "Set command-line aliases":
    }->
    file_line { 'alias_ls':
        ensure  => present,
        path => '/home/vagrant/.bashrc',
        line => 'alias ll="ls --color=auto"'
    }->
    file_line { 'alias_ll':
        ensure  => present,
        path => '/home/vagrant/.bashrc',
        line => 'alias ll="ls --color=auto -lha"'
    }->
    file_line { 'alias_l':
        ensure  => present,
        path => '/home/vagrant/.bashrc',
        line => 'alias l="ls --color=auto -lA"'
    }

    notify { "Set locales":
    }->
    class { 'locales':
        locales => [
            'en_US.UTF-8 UTF-8',
            'de_DE.UTF-8 UTF-8'
        ],
        default_locale => 'de_DE.UTF-8'
    }

}
