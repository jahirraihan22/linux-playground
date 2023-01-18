Switch From PHP 5.6 => PHP 7.4
PHP 5.6 is set as the default version in your system, and you need to switch to PHP 7.4. Run the following commands to switch for Apache and command line.
 
Apache:-

    sudo a2dismod php5.6
    sudo a2enmod php7.4
    sudo service apache2 restart

Command Line:-
 
 
    sudo update-alternatives --set php /usr/bin/php7.4 &&
    sudo update-alternatives --set phar /usr/bin/phar7.4 &&
    sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4 &&
    sudo update-alternatives --set phpize /usr/bin/phpize7.4 &&
    sudo update-alternatives --set php-config /usr/bin/php-config7.4

Note – The phpize7.4 and php-config7.4 command is available in the php7.4-dev package. This is more useful for compiling PHP modules using pecl.
Switch From PHP 7.4 => PHP 5.6
Default PHP 7.4 is set on your system and you need to switch to PHP 5.6. Now run the following commands to switch for Apache and command line.

Apache:-

    sudo a2dismod php7.4
    sudo a2enmod php5.6
    sudo service apache2 restart

Command Line:-
 
    sudo update-alternatives --set php /usr/bin/php5.6
    sudo update-alternatives --set phar /usr/bin/phar5.6
    sudo update-alternatives --set phar.phar /usr/bin/phar.phar5.6 
    sudo update-alternatives --set phpize /usr/bin/phpize5.6
    sudo update-alternatives --set php-config /usr/bin/php-config5.6

Note – The phpize5.6 and php-config5.6 command is available in the php5.6-dev package. This is more useful for compiling PHP modules using pecl.



    sudo apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y
