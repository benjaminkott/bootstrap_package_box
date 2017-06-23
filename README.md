# Bootstrap Package Vagrant Box #

## Preparation ##

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](http://www.vagrantup.com/downloads.html)
- Install [Composer](https://getcomposer.org/download/)

## Install ##

Clone to your local environment, e.g.

```
cd <projectfolder>
git clone https://github.com/benjaminkott/bootstrap_package_box.git .
```

You need to run the composer install on Windows hosts as administrator.

Take a deep breath now... to avoid problems on Windows hosts we prefer source
checkouts instead of distributions for composer - it takes ages to clone the TYPO3 source
for the first time. This is now the perfect moment to get some coffe and check back after
~10 Minutes after hitting composer install.

```
cd <projectfolder>/www/cms7
composer install
cd <projectfolder>/www/cms8
composer install
cd <projectfolder>/www/cms9
composer install
```

Ensure your vagrant box is up to date. Before starting the box for the first time.

```
vagrant box update
vagrant up
```

## Edit hosts file ##

```
192.168.50.11 cms7.bootstrap.dev
192.168.50.11 cms8.bootstrap.dev
192.168.50.11 cms9.bootstrap.dev
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

### Database CMS7 ###

```
Host: localhost
Database: cms7_bootstrap
Username: bootstrap
Password: bootstrap
```

### Database CMS8 ###

```
Host: localhost
Database: cms8_bootstrap
Username: bootstrap
Password: bootstrap
```

### Database CMS9 ###

```
Host: localhost
Database: cms9_bootstrap
Username: bootstrap
Password: bootstrap
```

## Database ##

### Create new MySQL dump ###

Log into the VM and execute following command.

```
mysqldump -u bootstrap -pbootstrap --add-drop-table -h localhost cms7_bootstrap > /vagrant/data/cms7_bootstrap.sql
mysqldump -u bootstrap -pbootstrap --add-drop-table -h localhost cms8_bootstrap > /vagrant/data/cms8_bootstrap.sql
mysqldump -u bootstrap -pbootstrap --add-drop-table -h localhost cms9_bootstrap > /vagrant/data/cms9_bootstrap.sql
```
