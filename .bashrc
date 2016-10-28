alias reload='source ~/.bash_profile'
alias tml='tmux list-sessions'
alias tma='tmux -2 attach -t $1'
alias tmk='tmux kill-session -t $1'
alias bashrc='vi ~/.bashrc'
alias vimrc='vi ~/.vimrc'
alias vrb='cd ~/temp && vi temp.rb'
alias vi='/usr/local/bin/vim'
alias db='psql -U wwdb -d wwdb_dev'
export EDITOR='vim'
set -o emacs

alias config="/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME"
source $HOME/.secrets

