# Bootstrap Package Vagrant Box #

!WIP NOT WORKING YET!

## Preparation ##

- Install Virtual Box
- Install Vagrant
- Install Composer

## Install ##

You need to run the composer install on Windows hosts as administrator.

```
composer install
```

Take a deep breath, it takes ages cloning the TYPO3 source.
Get some coffee.

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

### Vagrant SSH ###

```
Username: vagrant
Password: vagrant
```

### TYPO3 ###

```
Username: admin
Password: password
```

### Database ###

```
Host: localhost
Database: bootstrap
Username: bootstrap_p
Password: bootstrap_u
```

## Database ##

### Create new MySQL dump ###

Log into the VM and execute following command.

```
mysqldump -u bootstrap -pbootstrap --add-drop-table -h localhost bootstrap > /vagrant/data/database.sql
```