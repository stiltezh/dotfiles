#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

PACMAN_CONF="/etc/pacman.conf"

cp "$PACMAN_CONF" "${PACMAN_CONF}.bak"

sed -i 's/^#Color/Color/' "$PACMAN_CONF"
sed -i '/^

\[options\]

/a Color' "$PACMAN_CONF" || true
sed -i 's/^#IloveCandy/IloveCandy/' "$PACMAN_CONF"
sed -i '/^

\[options\]

/a IloveCandy' "$PACMAN_CONF" || true
sed -i 's/^#ParallelDownloads.*/ParallelDownloads = 5/' "$PACMAN_CONF"
sed -i '/^

\[options\]

/a ParallelDownloads = 5' "$PACMAN_CONF" || true

echo "Pacman configuration has been updated!"
exit 0
