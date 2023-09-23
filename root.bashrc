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

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi

#custom alias 
alias 'v'="nvim"
alias 'ls'="ls -al"
alias 'ls'="lsd"
