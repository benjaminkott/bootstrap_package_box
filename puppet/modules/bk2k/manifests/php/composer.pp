define bk2k::php::composer(
  $package = undef
) {

  exec { "composer_phing_require":
    environment => ["COMPOSER_HOME=/home/vagrant/.composer/"],
    command     => "composer global require \"${package}\"",
    path        => ["/usr/local/bin/", "/usr/bin/"]
  }->
  exec { "composer_phing_install":
    environment => ["COMPOSER_HOME=/home/vagrant/.composer/"],
    command     => "composer global install",
    path        => ["/usr/local/bin/", "/usr/bin/"]
  }

}