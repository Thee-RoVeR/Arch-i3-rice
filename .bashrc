#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PS1='\n\[\e[1;34m\]\h\[\e[0m\] \[\e[1;38m\]as \[\e[1;33m\]\u\[\e[0m\]  \[\e[1;32m\]✅:\[\e[1;32m\]\w\[\e[1;0m\]\n|➤  '

neofetch

#custom alias
alias 'v'='nvim'
alias 'wifi-off'='sudo nmcli networking off'
alias 'wifi-on'='sudo nmcli networking on'
