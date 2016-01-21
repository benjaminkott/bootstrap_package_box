# Bootstrap Package Vagrant Box #

!WIP NOT WORKING YET!

## Preparation ##

- Install Virtual Box
- Install Vagrant
- Install Composer

## Install ##

@TODO add max_path description for windows
@TODO add text for running commandline in adminstrator mode on windows

```
composer --global config process-timeout 2000
composer install --prefer-source
```

Take a deep breath, it takes ages cloning the TYPO3 source.

```
vagrant box update
vagrant up
```

## Edit hosts file ##

```
192.168.50.11	bootstrap.dev.local
192.168.50.11	log.dev.local
192.168.50.11	phpmyadmin.dev.local
```

## Credentials ##

### Vagrant ###

```
Username: vagrant
Password: vagrant
```

### Database ###

```
Host: localhost
Database: bootstrap
Username: bootstrap
Password: bootstrap
```
