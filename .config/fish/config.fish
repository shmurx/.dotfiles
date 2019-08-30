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

set -gx GOPATH "/home/magnus/go"

# alias
alias "gp"="git pull"
alias "push"="git push"
alias "log"="tig"
