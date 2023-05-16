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

set -o vi
bind '"jk":"\e"'
alias dc='docker compose'
alias en='source ../../env/bin/activate'
alias end='source env/bin/activate'
alias db='docker compose exec backend bash'
alias dl='fc -s'
alias work='qutebrowser -B /home/fs/Desktop/qute/work'
alias day='qutebrowser -B /home/fs/Desktop/qute/day'
alias v='nvim'
alias sudo='doas'
alias tw="tmux has-session -t work || tmux new -s work; tmux a -t work"
alias tq="tmux has-session -t qute || tmux new -s qute; tmux a -t qute"
alias tm="tmux has-session -t moc || tmux new -s moc; tmux a -t moc"
alias fm="thunar"
alias tl='tmux ls'
alias moc='mocp -T orange'
