#!/bin/bash

# Update the system
sudo pacman -Syu

sudo pacman -S git
# Install yay (AUR Helper)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Install packages
yay -S  picom kitty i3-wm i3blocks i3lock i3status dmenu polybar neofetch neovim lightdm lightdm-slick-greeter noto-fonts-cjk ttf-jetbrains-mono pulseaudio

# Additional configurations or commands can be added here

echo "Installation completed."

