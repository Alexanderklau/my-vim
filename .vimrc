set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
    

" Powerline setup
" set term=xterm-256color
" set t_Co=256
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
 set laststatus=2
" set termencoding=utf-8
 set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
" set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
" set guifont=Ubuntu\ Mono
 let g:Powerline_symbols = 'unicode'
" let g:Powerline_symbols = 'fancy'

set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-pathogen'
Plugin 'Lokaltog/powerline'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
Plugin 'vim-scripts/lua.vim'
" Plugin 'klen/python-mode'
Plugin 'vim-scripts/python.vim'
Plugin 'vim-scripts/bash-support.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
" Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
" For Web dev
Plugin 'vim-scripts/Emmet.vim'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

Bundle 'vim-scripts/taglist.vim'



" For jedi-vim
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_select_first = 0

" Adding for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Global setting
filetype on
filetype plugin on

" For JS
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" For taglist plugin
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <u> :TlistUpdate<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_SingleClick = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 1
let Tlist_Close_On_Select = 0
let Tlist_Auto_Update = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_Menu = 1
let Tlist_Use_SingleClick = 1
let Tlist_Enable_Fold_Column = 1
let Tlist_Inc_Winwidth = 1
let Tlist_WinWidth = 30
let Tlist_Compact_Format = 1
let gswitchyntastic_enable_perl_checker = 1
let gswitchyntastic_enable_python_checker = 1
" For pydiction
let g:pydiction_location = '/home/jzhu/.vim/pydiction-1.2.1/complete-dict'

filetype indent on
set nobackup
set sw=2
set ts=2
autocmd FileType python setlocal et sta sw=2 sts=2
autocmd FileType bash setlocal et sta sw=2 sts=2
autocmd FileType perl setlocal et sta sw=2 sts=2
autocmd FileType java setlocal et sta sw=2 sts=2

" Enable NertTree
map <F9> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Configuration for python-mode
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


" Bash
