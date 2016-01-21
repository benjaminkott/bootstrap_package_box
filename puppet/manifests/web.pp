## INIT
exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
}
host { 'hostmachine':
    ip => '192.168.0.1';
}
package { ['htop', 'tree', 'unzip', 'vim', 'ruby', 'sendmail', 'git']:
    ensure => present;
}


## MYSQL
class { 'mysql::client':

}
class { 'mysql::server':
    remove_default_accounts => true,
    override_options => {
        'mysqld' => {
            'bind-address' => '0.0.0.0'
        }
    },
    restart => true
}->
mysql::db { "database":
    ensure => "present",
    user => 'bootstrap',
    password => 'bootstrap',
    dbname => 'bootstrap',
    host => '%',
    sql => '/vagrant/data/database.sql',
    enforce_sql => true,
    import_timeout => 900
}


## PHP
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


## APACHE
file { "/var/www":
    ensure => "directory"
}
file { "/var/www/bootstrap":
    ensure => link,
    target => "/vagrant/",
    force  => true;
}
file { "/var/www/bootstrap/web/fileadmin":
    ensure => link,
    target => "../assets/",
    force  => true;
}
class { 'apache':

}
apache::vhost { "bootstrap.dev.local.80":
    docroot => "/var/www/bootstrap/web",
    server_name => "bootstrap.dev.local",
    docroot_owner => 'vagrant',
    docroot_group => 'vagrant',
    directory_allow_override => "All"
}
apache::module { "rewrite":

}


## INSTALL PIMPMYLOG
file { "/var/www/log":
    ensure => "directory"
}->
apache::vhost { "log.dev.local.80":
    docroot => "/var/www/log",
    server_name => "log.dev.local",
    docroot_owner => "vagrant",
    docroot_group => "vagrant",
    directory_allow_override => "All"
}->
exec { "composer_require_pimp_my_log":
    environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
    command => "composer require \"potsky/pimp-my-log\"",
    path => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
    cwd => "/var/www/log"
}->
exec { "create_rights_for_log_folder":
    command => "chmod 777 /var/www/log",
    path => ["/bin"]
}->
exec { "change_user_for_apache_logfiles":
    command => "chown -R ${run_user}.${run_group} apache2/",
    path => ["/bin"],
    cwd => "/var/log/"
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


## INSTALL PHPMYADMIN
file { "/var/www/phpmyadmin":
    ensure => "directory"
}->
apache::vhost { "phpmyadmin.dev.local.80":
    docroot => "/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin",
    server_name => "phpmyadmin.dev.local",
    docroot_owner => "vagrant",
    docroot_group => "vagrant",
    directory_allow_override => "All"
}->
exec { "composer_require_phpmyadmin":
    environment => ["COMPOSER_HOME=/home/vagrant/.composer"],
    command => "composer require \"phpmyadmin/phpmyadmin\"",
    path => ["/usr/local/bin/", "/usr/bin/", "/bin/"],
    cwd => "/var/www/phpmyadmin",
    require => Exec['set_path_for_composer_bin']
}->
file { "/var/www/phpmyadmin/vendor/phpmyadmin/phpmyadmin/config.inc.php":
    ensure  => present,
    content => template("bk2k/phpmyadmin/phpmyadmin.config.erb")
}