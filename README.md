# Dotfiles

**Dotfiles** help me to keep my configuration files in one place, so if I change hardware, software stays same.

## Checklist

### 1. Download everything

- Install [homebrew package manager](http://brew.sh/) (`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`)
- Install zsh, wget, gcc, vim, git
- Install [rbenv](https://github.com/sstephenson/rbenv)
- Install [a Ruby version](https://github.com/sstephenson/rbenv#installing-ruby-versions) (last one I used was `2.1.5`)
- Set a [global Ruby version](https://github.com/sstephenson/rbenv#rbenv-global)
- Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) (`curl -L http://install.ohmyz.sh | sh`)

### 2. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### 3. Copy dotfiles

- Run `sh bootstrap.sh`
- **This will overwrite files. Be careful!**

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
