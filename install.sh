#!/bin/bash

# set -e

# Install essential apps
sudo pacman -S git pacaur zsh neofetch flameshot calc --noconfirm --needed

# Install i3 needed apps
sudo pacman -S i3 w3m rxvt-unicode compton rofi feh thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin xautolock playerctl numlockx yad xdotool --noconfirm --needed

# Install themes of icon, cursor and gtk
sudo pacman -S deepin-icon-theme xcursor-simpleandsoft arc-gtk-theme lxappearance --noconfirm  --needed

# Install perl extensions used in ~/.Xresources
pacaur -S urxvt-perls perl-clipboard --noconfirm --needed --noedit

# Install alternative to i3lock
pacaur -S betterlockscreen --noconfirm --needed --noedit

# Install Oh-My-Zsh
sudo pacman -S curl --noconfirm --needed
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fonts
sudo pacman -S otf-font-awesome ttf-opensans --noconfirm --needed
pacaur -S ttf-iosevka --noconfirm  --needed --noedit

# Copy setting files
cp -r .i3 ~/
cp -r .config/ ~/
cp .zshrc ~/
cp .Xresources ~/

# Load Xresources
xrdb ~/.Xresources

# Generate lockscreen backgorund
betterlockscreen -u $HOME/.i3/background.jpg -r 1920x1080

# Set Thunar as default directory manager
xdg-mime default Thunar.desktop inode/directory


## Install User Programs

# Google Chrome
pacaur -S google-chrome --noconfirm --noedit

# VSCode
pacaur -S visual-studio-code-bin --noconfirm --needed --noedit

# Deluge
pacaur -S deluge --noconfirm --needed --noedit

# Install spotify
# pacaur -S spotify --noconfirm --needed --noedit
