#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

echo "Updating package database..."
pacman -Syu --noconfirm

echo "Installing Bluetooth stack and utilities..."
pacman -S --noconfirm bluez bluez-utils bluez-deprecated-tools

if ! lsmod | grep -q btusb; then
  echo "Loading btusb kernel module..."
  modprobe btusb
fi

echo "Enabling and starting Bluetooth service..."
systemctl enable bluetooth.service
systemctl start bluetooth.service

echo "Installing GNOME Bluetooth tools..."
pacman -S --noconfirm gnome-bluetooth-3.0

echo "Bluetooth setup is complete!"
exit 0
