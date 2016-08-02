# Dotfiles

**Dotfiles** help me to keep my configuration files in one place, so if I change hardware, software stays same.
Note that these configurations and checklist are for a macbook.

## Checklist

### 1. Download everything

- Install the most essential tools: __fish, gcc, nvim, git__
- Install [ghc](https://www.haskell.org/ghc/), [cabal](https://www.haskell.org/cabal/), [stack](https://docs.haskellstack.org/en/stable/README/)
- Install [rvm](https://rvm.io/)
- Install [a Ruby version](https://rvm.io/rvm/basics) (last one I used was
  `2.3.0`)
- Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish/) (`curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish`)
- Install Agnoster Theme and [Powerline Compatible
  Fonts](https://github.com/powerline/fonts)

### 2. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### 3. Setup nvim

- VimPlug should work out of the box if you copy the files.
- One `:PlugInstall` and you should be all set.

### 4. Rails

- `gem install bundle`
- go to rails project folder
- `bundle install`

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
