#!/bin/bash
sudo apt-get update
sudo apt-get full-upgrade -y
sudo apt autoremove -y
sudo apt-get autoclean
flatpak update -y
flatpak uninstall --unused
sudo rm -rfv /var/tmp/flatpak-cache-*
sudo snap refresh
sudo journalctl --vacuum-time=3d
#sudo fwupdmgr refresh --force
#sudo fwupdmgr update -y
#sudo do-release-upgrade -m desktop
