#!/bin/sh

# install apps

sudo apt-get install vim git cscope curl

# setup shell

git clone https://github.com/jkiiski/vim.git ~/.vim

# copy configs...

CONFIGS="\
	.gitconfig \
	.tmux.conf \
	"

for c in $CONFIGS; do
	cp -i $c $HOME/
done

