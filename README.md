# Dotfiles
![screenshot of my dotfiles](http://i.imgur.com/dHayGFr.png)

**Dotfiles** help me keep my configuration files in one place, so if I change hardware, my config stays same.
Note that these configurations and checklist are for Ubuntu.
It contains my personal configurations for the following tools (excerpt):
- git
- tmux
- i3
- urxvt
- fish
- nvim

I plan on symlinking everything or using GNU stow in the future.

## Checklist

### 1. Local setup

- Clone this repository to `~/dotfiles`
- Install these tools:
  - fish, git, i3, rxvt, tmux, tmuxinator, feh, scrot (`sudo apt-get install fish git-core i3 rxvt-unicode-256color tmux tmuxinator feh scrot`)
  - [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)
- Download, compile and install
  [i3gaps](https://github.com/Airblader/i3/wiki/Compiling-&-Installing)
- Install [rbenv](https://github.com/rbenv/rbenv#installation) and a ruby version (2.3.0)
- Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish/) (`curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish`)
- Install [Powerline Compatible
  Fonts](https://github.com/powerline/fonts)

### 2. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### 3. Setup nvim

- VimPlug should work out of the box if you copy the files.
- One `:PlugInstall` and you should be all set.

### 4. Install and use it yourself

- `bash install.sh` should do the job. nvim, fish, i3 and tmuxinator files are symlinked, the rest is just copied **and will delete existing files**.
- Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
