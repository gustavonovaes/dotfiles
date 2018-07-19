#!/bin/bash

# set -e

# Install essential apps
sudo pacman -S git pacaur zsh neofetch flameshot --noconfirm
pacaur -S kalu --noconfirm

# Install i3 needed apps
sudo pacman -S i3 w3m rxvt-unicode compton rofi feh ranger xautolock playerctl numlockx --noconfirm

# Install themes of icon, cursor and gtk
sudo pacman -S deepin-icon-theme xcursor-simpleandsoft arc-gtk-theme lxappearance --noconfirm 

# Install perl extensions used in ~/.Xresources
pacaur -S urxvt-perls perl-clipboard

# Install alternative to i3lock
pacaur -S betterlockscreen --noconfirm

# Install Oh-My-Zsh
sudo pacman -S curl --noconfirm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fonts
sudo pacman -S otf-font-awesome ttf-opensans --noconfirm
pacaur -S ttf-iosevka --noconfirn

# Copy setting files
cp -r .i3 ~/
cp -r .config/ ~/
cp .zshrc ~/
cp .Xresources ~/

# Load Xresources
xrdb ~/.Xresources

# Generate lockscreen backgorund
betterlockscreen -u $HOME/.i3/background.jpg -r 1920x1080

# Setup ranger file manager
ranger --copy-config=all

# Making directories
mkdir -p ~/.local/bin


## Install User Programs

# usql
curl -Ls https://github.com/xo/usql/releases/download/v0.7.0/usql-0.7.0-linux-amd64.tar.bz2 | tar jvx
mv usql ~/.local/bin/

# VSCode
pacaur -S visual-studio-code-bin --noconfirm

# Deluge
pacaur -S deluge --noconfirm
