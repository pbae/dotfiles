#!/bin/bash

ln -si $(dirname $(realpath $0))/.vimrc $HOME
ln -si $(dirname $(realpath $0))/.tmux.conf $HOME
ln -si $(dirname $(realpath $0))/.psqlrc $HOME
ln -si $(dirname $(realpath $0))/.zshrc $HOME
ln -si $(dirname $(realpath $0))/.bashrc $HOME
ln -si $(dirname $(realpath $0))/.gitconfig $HOME

