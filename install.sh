#!/bin/sh

# Disable beep
sudo rmmod pcspk

# Install essential apps
sudo pacman -S i3 i3-gaps dmenu rxvt-unicode compton rofi feh ranger w3m --no-confirm
sudo pacman -S git pacaur zsh neofetch flameshot xautolock

# Install Oh-My-Zsh
sudo pacman -S curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install alternative to i3lock
pacaur -S betterlockscreen --noconfirm

# Install fonts
mkdir -p ~/.local/share/fonts
cp fonts/* ~/.local/share/fonts/
fc-cache -f

# Copy setting files
cp -r .i3 ~/
cp -r .config/ ~/
cp .zshrc ~/

# Load Xresources
xrdb ~/.Xresources

# Generate lockscreen backgorund
betterlockscreen -u $HOME/.i3/background.jpg -r 1920x1080 -b

# Setup ranger file manager
ranger --copy-config=all
