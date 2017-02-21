# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/cypher/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
# greeting
function fish_greeting
  fortune
end
# anaconda2
set PATH ~/bin $PATH
set PATH ~/anaconda2/bin $PATH
# nvim
set --export EDITOR nvim
alias vim=nvim
# rbenv
set PATH ~/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)
