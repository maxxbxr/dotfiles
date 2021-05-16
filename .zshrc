# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# Emac ZLE mode
bindkey -e
# Vi ZLE mode
#bindkey -v

# 'Suppr' key
bindkey	"^[[3~"	delete-char
# 'Fin' key
bindkey	"^[[F"	end-of-line
# Beginning key
bindkey	"^[[H"	beginning-of-line

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/max/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

PROMPT='%B%F{green}%n%f %F{blue}%1~%f%b%# '
RPROMPT='%B%F{green}[%?]%f%b %T'

alias ls='ls --color=auto'
alias ip='ip -color=auto'
alias slock='loginctl lock-session'

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
