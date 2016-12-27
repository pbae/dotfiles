alias reload='source ~/.bash_profile'
alias tml='tmux list-sessions'
alias tma='tmux -2 attach -t $1'
alias tmk='tmux kill-session -t $1'
alias bashrc='vi ~/.bashrc'
alias vimrc='vi ~/.vimrc'
alias vi='/usr/bin/env vim'
alias db='psql -U wwdb -d wwdb_dev'
alias ll='ls -alrth'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ...='cd ...'

export EDITOR='vim'
set -o emacs

source $HOME/.secrets

alias em='emacs -nw'
