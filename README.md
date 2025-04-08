# 🌟 Dotfiles
## ✨ Overview 
This repository contains scripts and configuration files to streamline the setup of an Arch Linux system with GNOME desktop environment. It automates installations, configurations, and customizations to create a personalized and efficient workflow. 
## 📂 Directory Structure
```plaintext
dotfiles/
├── scripts/
│   ├── bluetooth.sh                  # 🚀 Automates Bluetooth setup for GNOME
│   ├── update_pacman_conf.sh         # ⚙️ Updates pacman.conf with essential settings
│   ├── install_whitesur_icons.sh     # 🎨 Installs WhiteSur Icon Theme and Apple Cursor
│   ├── install_whitesur_gtk_theme.sh # 🎭 Installs WhiteSur GTK Theme with tweaks
│   ├── install_apps.sh               # 🛠️ Installs applications via pacman, yay, and flatpak
├── README.md                         # 📜 Documentation for the repository
├── setup.sh                          # 🪄 Main script to run all configurations
├── config/
│   ├── pacman.conf                   # 🖋️ Sample pacman configuration file
│   ├── flatpak/
│   │   ├── flathub.list              # 🌍 Flatpak repository list
```
## 📜 Scripts Description
### 1. `scripts/bluetooth.sh`
-   Installs and configures Bluetooth for GNOME.
-   Includes necessary packages and GNOME Bluetooth tools.
- 💡 **Purpose**: Simplifies Bluetooth setup.
### 2. `scripts/update_pacman_conf.sh`
-   Updates `/etc/pacman.conf`:
    -   🖌️ Enables `Color` for a colorful pacman output.
    -   🎉 Adds `IloveCandy` for a fun ASCII pacman.
    -   ⚡ Sets `ParallelDownloads = 5` to speed up package downloads. 
    - 💡 **Purpose**: Optimizes the pacman package manager.

### 3. `scripts/install_whitesur_icons.sh`

-   Clones and installs the [WhiteSur Icon Theme](https://github.com/vinceliuice/WhiteSur-icon-theme).
-   Installs Apple Cursor via `yay`.
- 💡 **Purpose**: Beautifies the GNOME environment with modern themes and cursors.

### 4. `scripts/install_whitesur_gtk_theme.sh`
-   Installs the [WhiteSur GTK Theme](https://github.com/vinceliuice/WhiteSur-gtk-theme).
-   Applies custom tweaks using `install.sh` and `tweaks.sh`. 
- 💡 **Purpose**: Enhances the appearance of the GNOME desktop.

### 5. `scripts/install_apps.sh`
-   Installs applications using:
    -   **Pacman**: Productivity and entertainment tools.
    -   **Yay**: Additional packages like `keypunch-git` and `alpaca-ai`.
    -   **Flatpak**: Apps like Bottles, Mirror Hall, and Collector.
    - 💡 **Purpose**: Equips the system with essential software for daily use.

### 6. `setup.sh`

-   The main script to orchestrate the setup process:
    -   Executes all scripts sequentially.
    -   Automates system configuration for Arch Linux GNOME.
    - 💡 **Purpose**: Simplifies the initial setup for new installations.
## 🔧 How to Use
1.  Clone this repository:
    ```bash
	git clone https://github.com/stiltezh/dotfiles.git
    ```
2.  Navigate to the directory:
	```bash
	cd dotfiles
	```
3.  Make the `setup.sh` script executable:
	```bash
    chmod +x setup.sh
    ```
4.  Run the `setup.sh` script:
	```bash
    sudo ./setup.sh
    ```

## 🎨 Customization
Feel free to modify the scripts and configuration files to better suit your needs:
-   🛠️ **Add or remove packages**: Edit `install_apps.sh` to change installed applications.
-   ✍️ **Modify pacman.conf**: Update the `config/pacman.conf` file with additional options.
    

## 🏆 License
This repository is open-source. Use, modify, and share it freely.
