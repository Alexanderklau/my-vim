my-vim
======

including many .vim plugin and scripts.

This repo including the vim scripts and plugin for programming languages, like perl, c, C++, python, shell and so on.

for example: if you create a new perl script, the script HEARER will be automatically generated.

It's useful when you install a new machine, you dont have to download all kinds of vim plugins. Because this repo includes everyting you want.


Installation:

1. go to your home directory
2. check if '.vim' directory exists
3. create it if not exists
4. go to .vim directory
5. git clone this repo
6. you need to make a symbolic link for the .vimrc to your home directory
   #ln -sf .vimrc ~/.vimrc
7. Make a symbolic link of .bashrc to your $HOME
   #ln -sf .bashrc ~/.bashrc
7. you also need to install the ctag package if you have not installed it yet. on Linux Mint, you can simply just install ctag from the software manager
8. then try 'vi test.pl'
