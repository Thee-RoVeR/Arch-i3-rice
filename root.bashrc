#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

export PS1='\n\[\e[1;34m\]\h\[\e[0m\] \[\e[1;36m\]as \[\e[1;33m\]\u\[\e[0m\]  \[\e[1;31m\]⚡:\[\e[1;31m\]\w\[\e[0m\]\n\[\e[1;31m\]╠➠❯\[\e[0m\] '
case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

source /usr/share/bash-completion/completions/paru.bash

#custom alias
alias "ls"="lsd -al"
alias ".."="cd .."
alias "v"="nvim"
alias "wifi-off"="sudo nmcli networking off"
alias "wifi-on"="sudo nmcli networking on"
alias "htop"="bashtop"
