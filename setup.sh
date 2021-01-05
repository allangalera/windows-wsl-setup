#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

# install
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update -y
sudo apt install -y build-essential git

# extracting tools
sudo apt install -y p7zip-full zip unzip

# java
sudo apt install default-jre -y

# tools
sudo apt install -y curl
sudo apt install -y htop
sudo apt install -y jq      # sed json files
sudo apt install -y ripgrep # better grep

# install nvm and latest node
nvm_version=$(curl --silent "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | grep "tag_name" | sed -E 's/.*"([^"]+)".*/\1/')
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$nvm_version/install.sh | bash

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install fish shell, set as default, download config file, install extensions
sudo apt install fish
chsh -s /usr/bin/fish
mkdir -p ~/.config/fish

# uninstall
sudo apt -y autoremove
