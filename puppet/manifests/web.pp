## Setup Basics
stage { 'pre': before => Stage['main'] }
class { 'bk2k': stage => 'pre'  }
include bk2k

$apache_user  = "vagrant"
$apache_group = "vagrant"

## Install MySQL Client, Dumps the database and install MySQL Server
bk2k::mysql::client { "mysql":

}->
bk2k::mysql::server { "mysql_server":
  database => "bootstrap",
}->

## Install PHP
bk2k::php { "php5":

}->

## Install Apache
bk2k::apache { "bootstrap":
  hostname                 => "bootstrap",
  port                     => 80,
  directory_allow_override => "All",
  run_user                 => "${apache_user}",
  run_group                => "${apache_group}",
  create_log               => true,
  create_phpmyadmin        => true
}