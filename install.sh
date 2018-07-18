#!/bin/sh

# Disable beep
sudo rmmod pcspk

# Install essential apps
sudo pacman -S git pacaur zsh neofetch flameshot

# Install i3 needed apps
sudo pacman -S i3 i3-gaps dmenu rxvt-unicode compton rofi feh ranger w3m xautolock --no-confirm

# Install alternative to i3lock
pacaur -S betterlockscreen --noconfirm

# Install Oh-My-Zsh
sudo pacman -S curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fonts
pacman -S otf-font-awesome --noconfirm
pacaur -S ttf-iosevka --silent --noconfirm
fc-cache -f

# Copy setting files
cp -r .i3 ~/
cp -r .config/ ~/
cp .zshrc ~/
cp .Xresources ~/

# Load Xresources
xrdb ~/.Xresources

# Generate lockscreen backgorund
betterlockscreen -u $HOME/.i3/background.jpg -r 1920x1080 -b

# Setup ranger file manager
ranger --copy-config=all

# Making directories
mkdir -p ~/.local/bin

## Install User Programs

# usql
curl -Ls https://github.com/xo/usql/releases/download/v0.7.0/usql-0.7.0-linux-amd64.tar.bz2 | tar jvx
mv usql ~/.local/bin/

# VSCode
pacaur -S --silent --noconfirm visual-studio-code-bin
