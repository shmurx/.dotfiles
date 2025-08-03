# Arch Linux Dotfiles

This repository contains configuration files and setup instructions for reproducing my Arch Linux environment.

---

## Arch Installation Guide

This installation process uses the official [`archinstall`](https://wiki.archlinux.org/title/Archinstall) installer with a custom configuration.

### 1. Download the Arch ISO

Download the latest ISO:

https://archlinux.org/download/

Use a nearby mirror.

---

### 2. Write the ISO to a USB Drive

**Warning:** This will erase the USB stick.

On Linux:

```bash
sudo dd bs=4M if=/path/to/archlinux-*.iso of=/dev/sdX status=progress oflag=sync
```

Replace `/dev/sdX` with your actual device (not a partition like `/dev/sdX1`).

---

### 3. Boot from USB

Reboot and select the USB device as the boot source in BIOS/UEFI.

---

### 4. Connect to the Internet

```bash
iwctl
```

Inside `iwctl`:

```bash
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect <SSID>
```

Replace `wlan0` with your wireless device.

Exit with `exit`, and confirm connectivity:

```bash
ping archlinux.org
```

---

### 5. Install Git

The live environment does not include Git:

```bash
pacman -Sy git
```

---

### 6. Clone Dotfiles Repository

Clone the repository to access the `archinstall` configuration:

```bash
git clone https://github.com/shmurx/.dotfiles.git
```

---

### 7. Start the Installer

Run `archinstall` using the provided config:

```bash
archinstall --config dotfiles/archinstall_config.json
```

This only preloads some default values. It does not install additional packages or configure the system beyond what is supported by `archinstall`.

---

## Post-Install Setup

Once the base system is installed and you have rebooted:

---

### 1. Install `yay` (AUR helper)

First, install build tools:

```bash
sudo pacman -S --needed base-devel
```

Then build and install `yay`:

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

---

### 2. Restore Package List

The repository includes a list of explicitly installed packages:

- `pkglist.txt` — official packages only

To install them:

```bash
yay -S --needed - < pkglist.txt
```

This does not include AUR packages or dependencies not explicitly installed.

---

## Optional

Generate a fresh `pkglist.txt` backup:

```bash
yay -Qe | awk '{print $1}' > pkglist.txt
```

---


### 3. Clone Dotfiles

```bash
git clone https://github.com/shmurx/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

---

### 2. Use `stow` to apply Dotfiles

Ensure submodules are initialized (if applicable):

```bash
git submodule update --init
```

Apply all configurations:

```bash
make all
```

Or apply specific modules:

```bash
stow bash
stow nvim
```

---

## Notes

- This repo assumes a clean Arch install.
- `archinstall` is used only to streamline disk setup and base install.
- All post-install customization is handled via this repository.
