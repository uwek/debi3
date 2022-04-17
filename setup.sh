#!/bin/bash

# als root (su):
#   apt install sudo git
#   sudo adduser uwek sudo
#   (user ab/anmelden)

function main() {
sudo apt-get update
sudo apt-get upgrade

git config --global credential.helper store
git config --global user.email "uwe.kallmeyer@gmail.com"
git config --global user.name "Uwe Kallmeyer"

sudo apt install stow lightdm i3 kitty firefox-esr
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target

# sudo sed -i 's|^# [Seat:\*].*$|[Seat:*]|g' /etc/lightdm/lightdm.conf
sudo sed -i 's|^# autologin-user =.*$|autologin-user = uwek|g' /etc/lightdm/lightdm.conf
sudo sed -i 's|^# autologin-user-timeout =.*$|autologin-user-timeout = 0|g' /etc/lightdm/lightdm.conf
sudo sed -i 's|^# autologin-session =.*$|autologin-session = i3|g' /etc/lightdm/lightdm.conf

}


function nomain() {
echo "No Main"
}

nomain

