set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set nu
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
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
let g:SimpylFold_docstring_preview=1
let python_highlight_all=1
syntax on
map <C-n> :NERDTreeToggle<CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4	|
    \ set softtabstop=4	|
    \ set shiftwidth=4	|
    \ set textwidth=79	|
    \ set expandtab	|
    \ set autoindent	|
    \ set fileformat=unix	|

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2	|
    \ set softtabstop=2	|
    \ set shiftwidth=2	|

if has('gui_running')
	  set background=dark
	    colorscheme solarized
    else
	      colorscheme zenburn
      endif
     
