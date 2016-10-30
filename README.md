# Bootstrap Package Vagrant Box #

## Preparation ##

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](http://www.vagrantup.com/downloads.html)
- Install [Composer](https://getcomposer.org/download/)

## Install ##

Clone to your local environment, e.g.

```
cd C:\Users\USER\Vagrants\
git clone https://github.com/benjaminkott/bootstrap_package_box.git
```

You need to run the composer install on Windows hosts as administrator.

Take a deep breath now... to avoid problems on Windows hosts we prefer source 
checkouts instead of distributions for composer - it takes ages to clone the TYPO3 source
for the first time. This is now the perfect moment to get some coffe and check back after
~10 Minutes after hitting composer install.

```
composer install
```

Ensure your vagrant box is up 2 date. Before starting the box for the first time.

```
vagrant box update
vagrant up
```

## Edit hosts file ##

```
192.168.50.11 bootstrap.dev
192.168.50.11 log.dev
192.168.50.11 phpmyadmin.dev
```

## Credentials ##

### Vagrant SSH ###

```
IP: 192.168.50.11
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
mysqldump -u bootstrap_u -pbootstrap_p --add-drop-table -h localhost bootstrap > /vagrant/data/database.sql
```
