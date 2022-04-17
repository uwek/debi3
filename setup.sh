#!/bin/bash

# als root (su):
#   apt install sudo git
#   sudo adduser uwek sudo
#   git clone https://github.com/uwek/debi3
#   (user ab/anmelden)

function s_basic() {
sudo apt-get update
sudo apt-get upgrade

git config --global credential.helper store
git config --global user.email "uwe.kallmeyer@gmail.com"
git config --global user.name "Uwe Kallmeyer"

sudo apt install vim stow lightdm i3 kitty firefox-esr
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target
}

function s_lightdm() {
	echo "n.u."
### manuell erledigt
# sudo sed -i 's|^# [Seat:\*].*$|[Seat:*]|g' /etc/lightdm/lightdm.conf
# sudo sed -i 's|^# autologin-user =.*$|autologin-user = uwek|g' /etc/lightdm/lightdm.conf
# sudo sed -i 's|^# autologin-user-timeout =.*$|autologin-user-timeout = 0|g' /etc/lightdm/lightdm.conf
# sudo sed -i 's|^# autologin-session =.*$|autologin-session = i3|g' /etc/lightdm/lightdm.conf
}

function nomain() {
echo "No Main"
}

# main

# sudo apt install feh
sudo apt install fonts-font-awesome neofetch fonts-dejavu

