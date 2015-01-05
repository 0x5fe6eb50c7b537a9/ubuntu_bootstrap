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
# chrome://flags/  > 'Override software rendering: Enable'

#awscli
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python
wget https://pypi.python.org/packages/source/a/awscli/awscli-1.6.10.tar.gz -P /tmp/
tar -xvzf /tmp/awscli-1.6.10.tar.gz -C /tmp
mv /tmp/awscli-1.6.10 /opt/awscli
cd /opt/awscli/
python setup.py install
cd ~

# aws elastic-mapreduce cli (ruby 2.0 dep)
apt-get install ruby2.0
mkdir /opt/elastic-mapreduce-cli
wget http://elasticmapreduce.s3.amazonaws.com/elastic-mapreduce-ruby.zip -P /tmp/
unzip /tmp/elastic-mapreduce-ruby.zip -d /opt/elastic-mapreduce-cli/
# ToDo: add the /opt/elastic-mapreduce-cli/credentials.json
cd ~

# R
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
apt-add-repository 'deb http://lib.stat.cmu.edu/R/CRAN/bin/linux/ubuntu trusty/'
apt-get install r-base r-base-html r-doc-html r-doc-info r-doc-pdf r-mathlib tcl8.6 tk8.6 tcl-tclreadline




