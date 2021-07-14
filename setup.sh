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
sudo apt install -y libgtk-3-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libsoup2.4-dev
# tauri dependencies
sudp apt install -y libsoup2.4-dev libwebkit2gtk-4.0-dev
# add permission to dbus to run without password
echo $(whoami)" ALL = (root) NOPASSWD: /etc/init.d/dbus" | sudo tee -a /etc/sudoers.d/dbus
# make sure you have https://sourceforge.net/projects/vcxsrv/ installed
# when running use "start as client" > and select "disable access control"

# run docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER

# extracting tools
sudo apt install -y p7zip-full zip unzip

# java
sudo apt install default-jre -y

# tools
sudo apt install -y curl
sudo apt install -y jq      # sed json files
sudo apt install -y ripgrep # better grep
sudo apt install -y tree    # see folder tree structure

# install volta instead of nvm
curl https://get.volta.sh | bash
volta install node
volta install yarn

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install fish shell, set as default, download config file
sudo apt install fish -y
chsh -s /usr/bin/fish
mkdir -p ~/.config/fish
curl -o ~/.config/fish/config.fish https://raw.githubusercontent.com/allangalera/wsl-initial-setup/main/config.fish

# install oh-my-fish and theme
curl -L https://get.oh-my.fish | fish
omf install agnoster
# 
# install fisher and extensions
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install edc/bass              # Bass makes it easy to use utilities written for Bash in fish shell.
fisher install jorgebucaran/autopair.fish

# install rust cargo packages
cargo install lsd # prettier ls
cargo install rm-improved # safe rm
cargo install bottom # better than top (in my opinion)
cargo install diskonaut # disk space visualizer
cargo install broot # tree file explorer
cargo install fd-find # better find
cargo install hyperfine # benchmarking tool.
cargo install gping # Ping, but with a graph.
cargo install dprint # faster prittier

# uninstall
sudo apt -y autoremove
