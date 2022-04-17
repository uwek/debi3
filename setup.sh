# als root (su):
#   apt install sudo
#   sudo adduser uwek sudo
#   (user ab/anmelden)

# sudo apt-get update
# sudo apt-get upgrade

# sudo apt install git stow lightdm
# sudo apt install i3 kitty
# sudo apt install firefox-esr


# sudo systemctl enable lightdm
# sudo systemctl set-default graphical.target

# sudo vi /etc/lightdm/lightdm.conf
# sudo sed -i 's|^# [Seat:\*].*$|[Seat:*]|g' /etc/lightdm/lightdm.conf
sudo sed -i 's|^# autologin-user =.*$|autologin-user = uwek|g' /etc/lightdm/lightdm.conf
sudo sed -i 's|^# autologin-user-timeout =.*$|autologin-user-timeout = 0|g' /etc/lightdm/lightdm.conf
sudo sed -i 's|^# autologin-session =.*$|autologin-session = i3|g' /etc/lightdm/lightdm.conf
# autologin etc.


