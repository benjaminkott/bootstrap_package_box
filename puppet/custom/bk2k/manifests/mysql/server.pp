define bk2k::mysql::server() {

    class { 'mysql::server':
        root_password => "root",
        remove_default_accounts => true,
        override_options => {
            'mysqld' => {
            'bind-address' => '0.0.0.0'
            }
        },
        restart => true
    }->
    mysql::db { "database for cms7.bootstrap.dev":
        ensure => "present",
        user => "bootstrap",
        password => "bootstrap",
        dbname => "cms7_bootstrap",
        host => '%',
        sql => '/vagrant/data/cms7_bootstrap.sql',
        enforce_sql => true,
        import_timeout => 900
    }->
    mysql::db { "database for cms8.bootstrap.dev":
        ensure => "present",
        user => "bootstrap",
        password => "bootstrap",
        dbname => "cms8_bootstrap",
        host => '%',
        sql => '/vagrant/data/cms8_bootstrap.sql',
        enforce_sql => true,
        import_timeout => 900
    }->
    mysql::db { "database for cms9.bootstrap.dev":
        ensure => "present",
        user => "bootstrap",
        password => "bootstrap",
        dbname => "cms9_bootstrap",
        host => '%',
        sql => '/vagrant/data/cms9_bootstrap.sql',
        enforce_sql => true,
        import_timeout => 900
    }

}
