# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/cypher/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
function fish_greeting
  fortune
end
rvm default
set PATH ~/bin $PATH
set PATH ~/anaconda3/bin $PATH
set --export EDITOR nvim
alias vim=nvim
rvm default
