        #!/bin/bash
        #java -version
        echo "-----------------------------------------------------"
        echo "updating repository"
        sudo apt update
        echo "-----------------------------------------------------"
        echo "installing jdk"
        sudo apt install default-jdk
        echo "-----------------------------------------------------"
        echo "get key"
        wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
        sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ >  /etc/apt/sources.list.d/jenkins.list' 
        echo "-----------------------------------------------------"
        
        echo "-----------------------------------------------------"
        echo "updating repository"
        sudo apt-get update
        echo "-----------------------------------------------------"
        echo "installing jenkins"
        sudo apt-get install jenkins
        echo "-----------------------------------------------------"
        echo "updating firewall"
        sudo ufw allow 8080/tcp
        echo "-----------------------------------------------------"
        echo "show password"
        sudo cat /var/lib/jenkins/secrets/initialAdminPassword
        echo "-----------------------------------------------------"
        
