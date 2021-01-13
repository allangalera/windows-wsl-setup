#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

# install basic tools and newest git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update -y
sudo apt install -y build-essential checkinstall libssl-dev git software-properties-common apt-transport-https ca-certificates

# configure default git branch to main
git config --global init.defaultBranch main

# dependencies to x-server
# this is used to open GUI applications like gitkraken :)
# follow this tutorial https://nickymeuleman.netlify.app/blog/gui-on-wsl2-cypress
sudo apt install-y libgtk-3-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2
# add permission to dbus to run without password
echo (whoami)" ALL = (root) NOPASSWD: /etc/init.d/dbus" | sudo tee -a /etc/sudoers.d/dbus
# make sure you have https://sourceforge.net/projects/vcxsrv/ installed
# when running use "start as client" > and select "disable access control"

# extracting tools
sudo apt install -y p7zip-full zip unzip

# java
sudo apt install default-jre -y

# tools
sudo apt install -y curl
sudo apt install -y htop
sudo apt install -y jq      # sed json files
sudo apt install -y ripgrep # better grep
sudo apt install -y tree    # see folder tree structure

# install nvm, altest stable and current node and set stable as default
nvm_version=$(curl --silent "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | grep "tag_name" | sed -E 's/.*"([^"]+)".*/\1/')
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$nvm_version/install.sh | bash
nvm install 'lts/*'
nvm install node
nvm alias default 'lts/*'

# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update -y
sudo apt install -y --no-install-recommends yarn

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install fish shell, set as default, download config file
sudo apt install fish
chsh -s /usr/bin/fish
mkdir -p ~/.config/fish
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/allangalera/wsl-initial-setup/main/config.fish

# install oh-my-fish and theme
curl -L https://get.oh-my.fish | fish
omf theme agnoster

# install fisher and extensions
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher add FabioAntunes/fish-nvm # port nvm to fish
fisher add edc/bass              # Bass makes it easy to use utilities written for Bash in fish shell.
fisher install jorgebucaran/autopair.fish


# install gitkraken (git GUI application)
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt install -f
rm -rf gitkraken-amd64.deb

# install rust cargo packages
cargo install lsd # prettier ls
cargo install rm-improved # safe rm

# TODO: install vs-code extensions

# uninstall
sudo apt -y autoremove
