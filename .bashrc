alias reload='source ~/.bash_profile'
alias tml='tmux list-sessions'
alias tma='tmux -2 attach -t $1'
alias tmk='tmux kill-session -t $1'
alias bashrc='vi ~/.bashrc'
alias vimrc='vi ~/.vimrc'
alias vrb='cd ~/temp && vi temp.rb'
alias vi='/usr/local/bin/vim'
export EDITOR='vim'
set -o emacs

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias config="/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME"
source $HOME/.secrets

