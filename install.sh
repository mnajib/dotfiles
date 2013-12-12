#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.zshrc
#rm ~/.vimrc
#rm ~/.vim
#rm ~/.gvimrc
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.tmux.conf

echo "Symlinking files"
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
#ln -s ~/Github/dotfiles/vimrc ~/.vimrc
#ln -s ~/Github/dotfiles/vim ~/.vim
#ln -s ~/Github/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Github/dotfiles/gitignore ~/.gitignore
ln -s ~/Github/dotfiles/tmux ~/.tmux.conf
ln -s ~/Github/dotfiles/githelpers ~/.githelpers

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."
