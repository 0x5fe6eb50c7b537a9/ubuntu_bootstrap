#!/bin/bash
# list of Ubuntu 14.04 common PPA programs to install

# versioning control systems
apt-get install git subversion subversion-tools apache2 libapache2-svn git-svn

# generic programs
apt-get install emacs24-nox locate

# php5 
apt-get install php5 php5-cli php5-mysql php5-xdebug php-pear phpunit phpunit-story phpunit-selenium php-invoker javascript-common
pear install PHP_CodeSniffer
wget https://phar.phpunit.de/phpunit-skelgen.phar -P /tmp/
chmod +x /tmp/phpunit-skelgen.phar
mv /tmp/phpunit-skelgen.phar /usr/local/bin/phpunit-skelgen

# maven3, ant
apt-get install maven ant

# mysql
apt-get install mysql-client-5.6 mysql-server-5.6 mysql-common-5.6

# outside: chrome, mysql workbench, Rstudio




