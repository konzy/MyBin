#!/bin/bash
# gets external ip address

#Vundle install
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#YouCompleteMe install
cd ~

#for testing only
rm .vimrc
echo "error deleting .vimrc is normal you should comment these lines"
#/for testing only

#make Vundle Plugin file .vimrc
echo " set nocompatible              \" be iMproved, required
filetype off                  \" required

\"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
\" alternatively, pass a path where Vundle should install plugins
\" call vundle#begin('~/some/path/here')

\" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

\" The following are examples of different formats supported.
\" Keep Plugin commands between vundle#begin/end.

Plugin 'Valloric/YouCompleteMe'

\" All of your Plugins must be added before the following line
call vundle#end()            \" required
filetype plugin indent on    \" required
\" To ignore plugin indent changes, instead use:
\"filetype plugin on
\" Brief help
\" :PluginList       - lists configured plugins
\" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
\" :PluginSearch foo - searches for foo; append `!` to refresh local cache
\" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
\"
\" see :h vundle for more details or wiki for FAQ
\" Put your non-Plugin stuff after this line" >> .vimrc

cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs

vim +PluginInstall +qall
