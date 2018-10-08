set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'peterhoeg/vim-qml'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

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

set hlsearch
set number
set t_Co=256
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrapscan
highlight Normal ctermfg=white
highlight LineNr ctermfg=darkgrey
highlight Search ctermbg=yellow
nnoremap <F2> *
nnoremap <F3> N
nnoremap <F4> n
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F12> :execute "lvimgrep /" . expand("<cword>") . "/gj **/*.h **/*.c **/*.cpp **/*.java **/*.qml **/*.xml" <Bar> lw <CR>
