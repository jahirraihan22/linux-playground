wget "https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.696/gcmcore-linux_amd64.2.0.696.deb" -O /tmp/gcmcore.deb
sudo dpkg -i /tmp/gcmcore.deb
git-credential-manager-core configure

# for GUI based PC
git config --global credential.credentialStore secretservice

# for server
# git config --global credential.credentialStore plaintext
