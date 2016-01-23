define bk2k::mysql::server(
    $database      = undef,
    $user          = undef,
    $password      = undef,
    $root_password = "root"
) {

    if $user {
        $database_user = $user
    } else {
        $database_user = "${database}_u"
    }
    if $password {
        $database_password = $password
    } else {
        $database_password = "${database}_p"
    }
    class { 'mysql::server':
        root_password => $root_password,
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
        user => $database_user,
        password => $database_password,
        dbname => $database,
        host => '%',
        sql => '/vagrant/data/database.sql',
        enforce_sql => true,
        import_timeout => 900
    }

}
