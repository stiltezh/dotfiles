#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

echo "Updating system package database..."
pacman -Syu --noconfirm

echo "Installing applications with pacman..."
pacman -S --noconfirm video-trimmer amberol authenticator blanket cartridges collision \
decoder deja-dup eartag gnome-app-list eyedropper raider fragments health impression komikku \
mousai newsflash obfuscate paper-clip gnome-podcasts resources warp wike wine lib32-pipewire \
steam lutris slack-desktop

if ! command -v yay >/dev/null 2>&1; then
  pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay || exit
  makepkg -si --noconfirm
  cd -
fi

echo "Installing applications with yay..."
yay -S --noconfirm keypunch-git alpaca-ai rustdesk

if ! command -v flatpak >/dev/null 2>&1; then
  pacman -S --noconfirm flatpak
fi

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing applications with flatpak..."
flatpak install -y flathub net.codelogistics.webapps eu.nokun.MirrorHall \
com.github.cassidyjames.dippi com.usebottles.bottles it.mijorus.collector

echo "All applications installed!"
exit 0
