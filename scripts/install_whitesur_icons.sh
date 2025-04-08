#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

REPO_URL="https://github.com/vinceliuice/WhiteSur-icon-theme.git"
INSTALL_DIR="/tmp/WhiteSur-icon-theme"

if [ -d "$INSTALL_DIR" ]; then
  cd "$INSTALL_DIR" && git pull
else
  git clone "$REPO_URL" "$INSTALL_DIR"
fi

cd "$INSTALL_DIR" || exit
chmod +x install.sh
./install.sh

if command -v yay >/dev/null 2>&1; then
  yay -S --noconfirm apple_cursor
else
  echo "Error: yay is not installed."
fi

rm -rf "$INSTALL_DIR"
echo "WhiteSur Icon Theme and Apple Cursor installed!"
exit 0
