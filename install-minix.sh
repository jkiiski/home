#!/bin/sh

pkgin install scmgit-base vim cscope

git clone https://github.com/jkiiski/vim.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
cd -

# copy configs...

CONFIGS="\
	.gitconfig"

for c in $CONFIGS; do
	cp -i $c $HOME/
done

