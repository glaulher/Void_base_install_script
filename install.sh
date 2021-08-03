#!/usr/bin/bash

xbps-install -Syuv
xbps-install -Sy dbus elogind 
xbps-install -Sy void-repo-nonfree void-repo-multilib
xbps-install -Sy xorg-minimal mesa-dri mesa-intel-dri xorg-input-drivers
xbps-install -Sy ntfs-3g sysfsutils linux-firmware linux-firmware-intel upower intel-ucode
xbps-reconfigure -f linux
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/elogind /var/service

xbps-install -S nano vim Adapta papirus-icon-theme breeze-cursors qt5-styleplugins font-firacode fonts-roboto-ttf font-awesome
xbps-install -S pulseaudio pavucontrol alsa-plugins-pulseaudio alsa-utils squashfs-tools xrdb xkill gvfs acpilight
xbps-install -S firefox-i18n-pt-BR ranger trash-cli mpv feh lrzip unzip zip p7zip-unrar p7zip  
