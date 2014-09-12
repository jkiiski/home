#!/bin/sh

# install apps

sudo apt-get install zsh vim git ctags curl xfonts-terminus

# setup shell

# gnome-terminal solarized colors
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
gnome-terminal-colors-solarized/set_dark.sh
rm -rf gnome-terminal-colors-solarized

# oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git clone https://github.com/jkiiski/vim.git ~/.vim

# copy configs...

CONFIGS="\
	.gitconfig \
	.zshrc"

for c in $CONFIGS; do
	cp -i $c $HOME/
done

