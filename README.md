# 🌱 My Arch Linux Dotfiles

This repository contains my configuration files and setup instructions for reproducing my Arch Linux environment.

---

## 🚀 Installing Arch Linux

This guide uses the official [archinstall](https://wiki.archlinux.org/title/Archinstall) installer with a custom package list.

### 1️⃣ Download the Arch ISO

Download the latest Arch Linux ISO from the official site:

👉 [https://archlinux.org/download/](https://archlinux.org/download/)

Choose a mirror close to you.

---

### 2️⃣ Write the ISO to a USB stick

**⚠️ Warning:** This will erase the contents of the USB stick.

On **Linux**:

```bash
sudo dd bs=4M if=/path/to/archlinux-*.iso of=/dev/sdX status=progress oflag=sync
```

Replace `/dev/sdX` with your USB device (not a partition like `/dev/sdX1`!).

On **Windows**, use [Rufus](https://rufus.ie/) to write the ISO.

On **macOS**:

```bash
diskutil list                # find your USB device
diskutil unmountDisk /dev/diskN
sudo dd if=/path/to/archlinux-*.iso of=/dev/rdiskN bs=1m
```

---

### 3️⃣ Boot from the USB stick

- Reboot your machine
- Enter BIOS/UEFI
- Select the USB stick as the boot device

You’ll land in a terminal environment.

---

### 4️⃣ Connect to Wi-Fi

In the live environment:

```bash
iwctl
```

Inside `iwctl`:

```bash
device list                    # check wireless device name
station wlan0 scan             # scan for networks
station wlan0 get-networks     # list available networks
station wlan0 connect <SSID>   # connect to your Wi-Fi
```

✅ Replace `wlan0` with your actual device name.

Test connection:

```bash
ping archlinux.org
```

Exit `iwctl` with `exit`.

---

### 5️⃣ Install `git` in the live environment

The default Arch ISO doesn’t include `git`. Install it so we can pull this repository:

```bash
pacman -Sy git
```

---

### 6️⃣ Clone this dotfiles repository

```bash
git clone https://github.com/shmurx/dotfiles.git
```

---

### 7️⃣ Start the guided installer

We use a **custom package list** from this repo while keeping everything else interactive:

```bash
archinstall --config dotfiles/config.json
```

✅ This will automatically install:

- chromium
- alacritty
- discord
- steam
- yay
- spotify

while letting you configure disks, locale, user, etc. interactively.

For full `archinstall` documentation:  
👉 [https://archinstall.readthedocs.io/](https://archinstall.readthedocs.io/)

---

## 📝 After Installation

Once Arch is installed and you reboot into your new system:

---

### 1️⃣ Clone the dotfiles repository

```bash
git clone https://github.com/shmurx/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

---

### 2️⃣ Install `stow`

```bash
sudo pacman -S stow
```

---

### 3️⃣ Apply dotfiles using `stow`

Inside the `~/dotfiles` directory:

```bash
stow bash
stow nvim
# Add more stow commands for each config directory or file
```

This will symlink the configs into the appropriate locations.

---

## 📦 Package list backup

This repository includes a backup list of installed packages:

- `pkglist.txt` → packages from official repositories
- `aur-pkglist.txt` → packages from AUR

You can reinstall them with:

```bash
sudo pacman -S --needed - < pkglist.txt
yay -S --needed - < aur-pkglist.txt
```

✅ This ensures your installed packages are reproducible.

---

## 🎉 Done!

Your Arch system is now installed and configured with my essential packages and dotfiles.

Feel free to fork or customize this repository for your own setup.

---

## 🖇️ Resources

- [Arch Linux Download](https://archlinux.org/download/)
- [Arch Wiki: archinstall](https://wiki.archlinux.org/title/Archinstall)
- [archinstall Documentation](https://archinstall.readthedocs.io/)
- [iwctl (iNet wireless daemon)](https://wiki.archlinux.org/title/Iwd)
