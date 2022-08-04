  # install git
    sudo apt-get install git

note

    https://bitnami.com/download/files/stacks/lampstack/7.4.29-0/bitnami-lampstack-7.4.29-0-linux-x64-installer.run?with_popup_skip_signin=1


# change mode xampp.run
   
    sudo chmod +x xampp-linux-x64-8.1.5-0-installer.run
    
# run 
     sudo ./xampp-linux-x64-8.1.5-0-installer.run
     

# php cli

    sudo apt install php7.4-cli

# install composer

    sudo apt install composer
  
 
# config git

### change username

    git config --global user.name "name"
  
### change email

    git config --global user.email "email"
  

install common php packages 

    sudo apt install php7.4 php7.4-common php7.4-opcache php7.4-cli php7.4-gd php7.4-curl php7.4-mysql
  

# ignore platform dependency
 
    composer install --ignore-platform-reqs

# permission
    sudo chmod -R 777 ./storage
    sudo chmod -R 777 bootstrap/cache/


# install process for node via nvm

### 1st

    sudo apt install curl


### 2nd

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

### 3rd

    source ~/.bashrc

### 4th (optional)

    nvm --version

### 5th (optional)

    nvm ls-remote


### nvm install [v]

### to switch between different version
  
    nvm use 8.11.1

