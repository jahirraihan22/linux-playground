    
### Firstly, cd to/usr/share/applications then create a new file with extension is *.desktop by opening the terminal then run this command: 
    
      sudo touch xampp.desktop.
    
### Open the new file with super admin right by: 
    
      sudo gedit xampp.desktop
    
### Paste following to the file content:

    
    [Desktop Entry]
    Encoding=UTF-8
    Name=XAMPP Control Panel
    Comment=Start and Stop XAMPP
    Exec=sudo /opt/lampp/manager-linux-x64.run
    Icon=/opt/lampp/htdocs/favicon.ico
    Categories=Application
    Type=Application
    Terminal=true
