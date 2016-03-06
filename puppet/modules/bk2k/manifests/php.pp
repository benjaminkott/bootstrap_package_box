define bk2k::php(

) {

    include php

    exec { "set_path_for_composer_bin":
        command => 'echo \'PATH=$PATH:~/.composer/vendor/bin\' > /home/vagrant/.bashrc',
        path    => ["/bin/", "/usr/bin/"],
        user    => "vagrant"
    }
  
}