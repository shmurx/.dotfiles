# Dotfiles

**Dotfiles** help me keep my configuration files in one place, so if I change hardware, my config stays same.
Note that these configurations and checklist are for Ubuntu.

Current setup:

purpose|tool
-----|-----
OS|Ubuntu 16.04
shell|fish with omf
WM|i3-gaps
compositor|compton
launcher|rofi
notifications|dunst
terminal|URxvt
terminal mutliplexer|tmux
editor|vscode

## To Do

- use GNU Stow
- use polybar

## Checklist

### 1. Local setup

- Clone this repository to `~/dotfiles`
- Install these tools:
  - fish, git, i3, rxvt, tmux, tmuxinator, feh, scrot, compton, rofi, dunst (`sudo apt-get install fish git-core i3 rxvt-unicode-256color tmux tmuxinator feh scrot compton rofi dunst`)
- Download, compile and install
  [i3gaps](https://github.com/Airblader/i3/wiki/Compiling-&-Installing)
- Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish/) (`curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish`)
- Install [Powerline Compatible Fonts](https://github.com/powerline/fonts)
- for some extra ricing, install vtop, cava, neofetch and take a look at [rizonrice](https://rizonrice.github.io/resources)

### 2. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### 3. Setup vscode

- `install.sh` will automatically setup settings and install plugins

### 4. Useful snippets

- you can use `feh --bg-scale ~/papes/(ls ~/papes | shuf -n 1)` to set a random wallpaper from the papes folder

### 5. Install and use it yourself

- `./install.sh` should do the job. vscode, fish, i3 and tmuxinator files are symlinked, the rest is just copied **and will delete existing files**.
- Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
