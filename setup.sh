#!/bin/bash

echo "Starting setup process..."

# Run Bluetooth setup
echo "Setting up Bluetooth..."
bash scripts/bluetooth.sh

# Update pacman.conf
echo "Updating pacman.conf..."
bash scripts/update_pacman_conf.sh

# Install WhiteSur Icon Theme and Apple Cursor
echo "Installing WhiteSur Icon Theme and Apple Cursor..."
bash scripts/install_whitesur_icons.sh

# Install WhiteSur GTK Theme
echo "Installing WhiteSur GTK Theme..."
bash scripts/install_whitesur_gtk_theme.sh

# Install applications
echo "Installing applications..."
bash scripts/install_apps.sh

echo "Setup complete!"
