set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Global setting
filetype on
filetype plugin on

" Powerline setup
" set term=xterm-256color
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
set laststatus=2
set termencoding=utf-8
" set guifont=Ubuntu\ Mono
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
let g:Powerline_symbols = 'unicode'
" let g:Powerline_symbols = 'fancy'

" set the runtime path to include Vundle and initialize
" let Vundle manage Vundle, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
Plugin 'rkulla/pydiction'
" Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
" For Web dev
Plugin 'vim-scripts/Emmet.vim'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Bundle 'vim-scripts/taglist.vim'

" For python check
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/pylint.vim'

" For C
Plugin 'vim-scripts/c.vim'

" For ruby and ror
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Plugin for Erlang
Plugin 'oscarh/vimerl'


" For jedi-vim
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_select_first = 1

" Adding for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let gswitchyntastic_python_checkers = ['pylint', 'pep8']
hi SpellBad ctermfg=001 ctermbg=251 guifg=#000080 guibg=#ffffff
hi SpellCap ctermfg=001 ctermbg=251 guifg=#000080 guibg=#ffffff

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

  " For all text files set 'textwidth' to 100 characters.
  autocmd FileType text setlocal textwidth=100

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
let g:pydiction_location = '/home/jzhu/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 8

filetype indent on
set nobackup
set sw=4
set ts=4
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType bash setlocal et sta sw=4 sts=4
autocmd FileType perl setlocal et sta sw=4 sts=4
autocmd FileType java setlocal et sta sw=4 sts=4
autocmd FileType c setlocal et sta sw=4 sts=4
autocmd FileType ruby setlocal et sta sw=4 sts=4

" Enable NertTree
map <F9> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" For python-mode
let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pylint,pyflakes,pep8"
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

" Setting for Python
set textwidth=100  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" Don't autofold code
let g:pymode_folding = 0
