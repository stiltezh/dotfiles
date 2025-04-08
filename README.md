# 🚀 Arch Linux Setup Guide with GNOME Customization
Welcome to the **Ultimate Guide** for setting up and customizing your Arch Linux system with GNOME desktop environment! This step-by-step guide covers everything from configuring essential system tools to enhancing your desktop experience with themes, icons, extensions, and apps.
## ✨ Table of Contents
1. [Preparing Your System](#-preparing-your-system)
2. [Configuring Pacman](#-configuring-pacman)
3. [Installing GNOME Bluetooth](#-installing-gnome-bluetooth)
4. [Installing GNOME Extensions](#-installing-gnome-extensions)
5. [Customizing with Themes, Icons, and Cursor](#-customizing-with-themes-icons-and-cursor)
6. [Installing Essential Applications](#-installing-essential-applications)
7. [Setting Up Flatpak](#-setting-up-flatpak)
## 🛠 Preparing Your System
Start by ensuring your Arch Linux system is up-to-date:
```bash
sudo pacman -Syu
```
Install some basic development tools if needed:
```bash
sudo pacman -S --needed git base-devel
```
## ⚙ Configuring Pacman
Optimize your `pacman.conf` for better performance and a touch of fun:
### 🖋️ Steps:
1.  Backup your existing configuration:
	```bash
	sudo cp /etc/pacman.conf /etc/pacman.conf.bak    
	```
2.  Add the following to the `[options]` section of `/etc/pacman.conf`:
```bash
    [options]
    Color
    IloveCandy
    ParallelDownloads = 5
```
-   `Color`: Enables colorful output for `pacman`.
-   `IloveCandy`: Adds a playful animation during downloads.
-   `ParallelDownloads`: Accelerates package downloads.

## 📡 Installing GNOME Bluetooth
GNOME Bluetooth setup ensures seamless connectivity for wireless devices.
### 🖋️ Steps:
1.  Install the required packages:
	```bash
	sudo pacman -S bluez bluez-utils bluez-deprecated-tools gnome-bluetooth-3.0 
	```
    
2.  Enable and start the Bluetooth service:
	```bash
 	sudo systemctl enable/start bluetooth.service
 	 ```
    
3.  Load the Bluetooth kernel module (if needed):
	```bash
 	sudo modprobe btusb
 	```
## 🌟 Installing GNOME Extensions
Enhance your desktop experience with GNOME extensions via the GNOME Extensions Website.
### 🖋️ Steps:
1.  Install GNOME Shell Integration:
	```bash
	sudo pacman -S gnome-shell-extensions gnome-tweaks gnome-browser-connector
	```
2.  Install specific extensions using the GNOME Extensions Installer:
	```bash
    sudo curl -s https://github.com/brunelli/gnome-shell-extension-installer/releases/download/v1.7/gnome-shell-extension-installer -o /usr/local/bin/gnome-shell-extension-installer
    sudo chmod +x /usr/local/bin/gnome-shell-extension-installer
    ```
3.  Add extensions using their IDs:
	```bash
 	gnome-shell-extension-installer 19 3193 4679 517 779 3210 307 4158 1319 3843 5506 5416 7048 --yes
 	```
## 🎨 Customizing with Themes, Icons, and Cursor
Make your desktop environment visually stunning with the **WhiteSur GTK Theme**, **WhiteSur Icon Theme**, and **Apple Cursor**.
### 🖋️ Steps:
1.  **Install WhiteSur Icon Theme**:
	```bash
    git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git --depth=1
    cd ~/WhiteSur-icon-theme
    sudo ./install.sh
    ```
2.  **Install Apple Cursor**:
	```bash
	yay -S apple_cursor
	```
3.  **Install WhiteSur GTK Theme**:
	```bash
	git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
	cd ~/WhiteSur-gtk-theme
 	./install.sh -l --round --shell -i arch
 	./tweaks.sh -g -i arch -f flat -F -c Dark -d
	```
## 🛠 Installing Essential Applications
Equip your system with productivity tools, entertainment apps, and system utilities.
### 🖋️ Steps:
#### Pacman Packages:
Install these tools via `pacman`:
```bash
sudo pacman -S video-trimmer amberol authenticator blanket cartridges collision decoder deja-dup \
eartag gnome-app-list eyedropper raider fragments health impression komikku mousai newsflash obfuscate \
paper-clip gnome-podcasts resources warp wike wine lib32-pipewire steam lutris amdvlk  	lib32-amdvlk  	amd-ucode mesa lib32-mesa  	xf86-video-amdgpu  xorg-xprop xdotool gnome-extra 	redshift wupd  	power-profiles-daemon  	gst-plugin-pipewire  	gstreamer  	gst-plugin-va packagekit  	libheif sushi file-roller gnome-online-accounts gvfs-goa gvfs-google  	gedit  	gedit-plugins  	gtksourceview4  	gimp
```

#### Yay Packages:
Install these tools via `yay` (make sure `yay` is installed):
```bash
yay -S mkinitcpio-firmware keypunch-git alpaca-ai rustdesk slack-desktop zen-browser mspinball-bin remmina-git ttf-ms-win11-auto gnome-shell-extension-coverflow-alt-tab-git gnome-shell-extension-openweather menulibre gnome-shell-extension-easyscreencast folder-color-nautilus nautilus-admin-gtk4
```

$ gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 3600
$ gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type hibernate
$ gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1800
$ gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type hibernate
$ gsettings set org.gnome.settings-daemon.plugins.power power-button-action suspend
$ gsettings set org.gnome.desktop.lockdown disable-lock-screen true


## 🌍 Setting Up Flatpak

Install and configure Flatpak to add universal app support.

### 🖋️ Steps:

1.  Install Flatpak:
    ```bash
    sudo pacman -S flatpak
    ```
2.  Add Flathub as a remote and Install applications from Flathub:
    ```bash
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak install -y flathub net.codelogistics.webapps eu.nokun.MirrorHall com.github.cassidyjames.dippi com.usebottles.bottles it.mijorus.collector
    ```
    

## 🎉 Conclusion
By following this guide, you’ve:
-   Configured Pacman for speed and style.
-   Set up GNOME Bluetooth and Extensions.
-   Installed stunning themes, icons, and cursors.
-   Equipped your system with essential applications.

🚀 **Enjoy your polished Arch Linux system with GNOME!**
Feel free to contribute improvements to this guide or share your feedback. Happy hacking! 💻
