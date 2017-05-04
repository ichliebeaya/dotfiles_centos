#!/bin/sh

#install zsh
yum -y install zsh

#change default shell to zsh
chsh -s /bin/zsh

#install zaw
cd ~
git clone git://github.com/zsh-users/zaw.git
  
#copy .zshrc .zshenv
sh ~/dotfiles_centos/dotfileLinks.sh

#download dein
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
