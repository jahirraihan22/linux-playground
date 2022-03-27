#! /bin/bash

sudo update-alternatives --set php /usr/bin/php$v
sudo update-alternatives --set phar /usr/bin/phar$v
sudo update-alternatives --set phar.phar /usr/bin/phar.phar$v
sudo update-alternatives --set phpize /usr/bin/phpize$v
sudo update-alternatives --set php-config /usr/bin/php-config$v
