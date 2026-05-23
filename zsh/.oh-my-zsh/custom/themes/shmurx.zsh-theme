PROMPT=$'%{$fg[yellow]%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg[yellow]%}@%{$fg_bold[white]%}%m%{$reset_color%}%{$fg[yellow]%}] [%{$fg_bold[white]%}/dev/%y%{$reset_color%}%{$fg[yellow]%}] %{$(git_prompt_info)%}%(?,,%{$fg[yellow]%}[%{$fg_bold[white]%}%?%{$reset_color%}%{$fg[yellow]%}])
%{$fg[yellow]%}└[%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[yellow]%}]>%{$reset_color%} '
PS2=$' %{$fg[yellow]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⚡%{$reset_color%}"
