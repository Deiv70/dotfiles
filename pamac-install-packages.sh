#!/usr/bin/bash

sudo pacman -Syyu && pamac upgrade --force-refresh

pamac install linux linux-headers linux-api-headers dkms \
	base-devel cronie screen locate bat exa git jq btop glances \
	noto-fonts-emoji ttf-firacode-nerd \
	clamav \
	nano nano-syntax-highlighting vim neovim \
	libvirt lxd docker kubectl \
	virtualbox virtualbox-host-dkms virt-manager qemu-desktop edk2-ovmf dnsmasq iptables-nft swtpm \
	gst-plugin-pipewire gst-plugins-good \
	dconf-editor d-spy gnome-boxes \
	kitty \
	psensor timeshift timeshift-autosnap-manjaro gparted cheese vlc libreoffice-{es,gl,pt} inkscape gimp discord \
	jdk17-openjdk maven \
	iio-sensor-proxy linux-firmware-qlogic

pamac build \
	google-chrome \
	grub-theme-lenovo \
	rtw89-dkms-git upd72020x-fw wd719x-firmware aic94xx-firmware

sudo usermod -aG libvirt,lxd,docker $USER

systemctl enable --now cronie.service
systemctl enable --now libvirtd.service
#systemctl enable --now lxd.service

mkdir -p ~/.local/opt
mkdir -p ~/Descargas/opt
cd ~/Descargas/opt

mkdir gitkraken
mkdir vscode
mkdir intellij-idea-ultimate

#google-chrome-stable "https://www.gitkraken.com/download/linux-gzip"
#google-chrome-stable "https://code.visualstudio.com/download"
#google-chrome-stable "https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux"
#google-chrome-stable "https://www.foxit.com/es-la/downloads/#Foxit-Reader"

#cp -r ~/Descargas/opt/* /opt
#lxd init
