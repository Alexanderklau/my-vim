my-vim
======

including many .vim plugin and scripts.

This repo including the vim scripts and plugin for programming languages, like perl, c, C++, python, shell and so on.

for example: if you create a new perl script, the script HEARER will be automatically generated.

It's useful when you install a new machine, you dont have to download all kinds of vim plugins. Because this repo includes everyting you want.


Installation:

1. go to your home directory
2. git clone this repo to .vim
3. you need to make a symbolic link for the .vimrc to your home directory
   #ln -sf .vimrc ~/.vimrc
4. Make a symbolic link of .bashrc to your $HOME
   #ln -sf .bashrc ~/.bashrc
5. you also need to install the ctag package if you have not installed it yet. on Linux Mint, you can simply just install ctag from the software manager
6. then try 'vi test.pl'

## You need to install Vundle at the begining
rm -rf ~/.vim/bundle/Vundle.vim
git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

7. Installing powerline
http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

8. Must installed plugin for python
http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/

9. Fix YCM issue
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

10. choose right powerline.sh
use correct powerline.sh, 否则命令行显示问题。
