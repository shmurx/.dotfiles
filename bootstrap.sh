#!/usr/bin/env bash
set -e

echo "==> Installing base dependencies..."
sudo pacman -S --needed --noconfirm git stow

DOTFILES="$HOME/.dotfiles"

if [[ ! -d "$DOTFILES" ]]; then
  echo "==> Cloning dotfiles..."
  git clone https://github.com/shmurx/.dotfiles.git "$DOTFILES"
fi

cd "$DOTFILES"

echo "==> Initializing submodules..."
git submodule update --init --recursive

echo "==> Installing Oh My Zsh..."
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "==> Stowing configs..."
make all

echo "==> Applying nvim colorscheme override..."
mkdir -p "$HOME/.config/nvim/lua/plugins"
cat > "$HOME/.config/nvim/lua/plugins/colorscheme.lua" << 'EOF'
return {
  { "ellisonleao/gruvbox.nvim" },
  { "LazyVim/LazyVim", opts = { colorscheme = "gruvbox" } },
}
EOF

echo "==> Installing packages from pkglist..."
if command -v yay &>/dev/null; then
  yay -S --needed --noconfirm - < pkglist.txt
else
  echo "    yay not found — install AUR helper manually, then run: yay -S --needed - < pkglist.txt"
fi

echo ""
echo "Done. Restart your shell or run: exec zsh"
