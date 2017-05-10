#!/bin/sh
ln -sf ~/dotfiles_centos/.vimrc ~/.vimrc
ln -sf ~/dotfiles_centos/.vim ~/.vim
if [ "$SHELL" = "/bin/bash" ];then
	ln -sf ~/dotfiles_centos/.bash_profile ~/.bash_profile
	ln -sf ~/dotfiles_centos/.bashrc ~/.bashrc
else if [ "$SHELL" = "/bin/zsh" ];then
	ln -sf ~/dotfiles_centos/.zshrc ~/.zshrc
	ln -sf ~/dotfiles_centos/.zshenv ~/.zshenv
     fi
fi
