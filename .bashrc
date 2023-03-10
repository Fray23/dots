#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

reset=$(tput sgr0)
bold=$(tput bold)
echo ""
PS1="\[\e[0;34m\]┌─[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\W\e[0;34m]──[\[\e[1;36m\]${HOSTNAME%%.*}\[\e[0;34m\]]\[\e[1;35m\]: \$\[\e[0;34m\]\n\[\e[0;34m\]└────╼ \[\e[1;35m\]>> \[\e[00;00m\]"

alias dc='docker compose'
alias en='source ../../env/bin/activate'
alias end='source env/bin/activate'
alias db='docker compose exec backend bash'
alias dl='fc -s'
alias br='broot'
alias n='nnn'
alias ls='exa -la --icons'
alias cat='bat'

source /home/fs/.config/broot/launcher/bash/br
