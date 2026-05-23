export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="shmurx"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# plugins — install with: yay -S zsh-autosuggestions zsh-syntax-highlighting fzf
[[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && \
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
[[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh

# aliases
alias ls="lsd -a"
alias tig="lazygit"
alias gs="git status"
alias gd="git diff"
alias ga="git add ."
alias gc="git commit -am"
alias pkg-save="pacman -Qqe > ~/.dotfiles/pkglist.txt && echo 'pkglist.txt updated'"

# vim mode
bindkey -v

# lazy nvm — only loads when first called
_load_nvm() { unfunction nvm node npm npx 2>/dev/null; source /usr/share/nvm/init-nvm.sh; }
nvm() { _load_nvm; nvm "$@"; }
node() { _load_nvm; node "$@"; }
npm() { _load_nvm; npm "$@"; }
npx() { _load_nvm; npx "$@"; }

# update arch mirrors
function update-mirrors() {
  local country="$1"
  if [[ -z "$country" ]]; then
    echo "Usage: update-mirrors <COUNTRY_CODE>"
    return 1
  fi
  echo "Fetching mirrors for $country..."
  curl -s "https://archlinux.org/mirrorlist/?country=${country}&protocol=https&use_mirror_status=on" \
    | sed 's/^#Server/Server/' \
    | rankmirrors -n 10 - \
    | sudo tee /etc/pacman.d/mirrorlist > /dev/null \
    && echo "Mirrorlist updated." || echo "Failed to update mirrorlist."
}

# atuin
eval "$(atuin init zsh)"
trap 'atuin sync >/dev/null 2>&1 &' EXIT
