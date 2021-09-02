call plug#begin('~/.vim/plugged')
  "theme
  Plug 'joshdick/onedark.vim'
  Plug 'ryanoasis/vim-devicons'

  "status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  "file browser
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  "hightlight & pretty
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  
  "file search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'

  "Terminal
  Plug 'voldikss/vim-floaterm'
  	
  "code intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'leafgarland/typescript-vim'  

  "git
  Plug 'tpope/vim-fugitive'

  "interprete .editorconfig
  Plug 'editorconfig/editorconfig-vim'

  Plug 'junegunn/vim-plug'
call plug#end()


"syntax hightlight
syntax on
colorscheme onedark

set encoding=UTF-8

let mapleader=" "

" indentation
set autoindent
set smartindent

set ruler

"add line number 
set number

" number of columns occupied by a tab
set tabstop=2
" see multiple spaces as tabstops so <BS> does the right thing
set softtabstop=2
 " width for autoindents
set shiftwidth=2
" converts tabs to white space
set expandtab
set smarttab

"allow auto-indenting depending on file type
filetype plugin indent on

"enable mouse
set mouse=a

"disable creating swap file
set noswapfile

"wrap long line
set wrap

"auto complete command in Command mode
set wildmenu
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignorecase

"open new tab in the right
set splitright

"speed up scrolling
set ttyfast

"highlight search
set hlsearch

"incremental search
set incsearch

"load plugin configs
execute 'source ~/.vim/config/nerdtree.vim'
execute 'source ~/.vim/config/coc.vim'
execute 'source ~/.vim/config/closetag.vim'
execute 'source ~/.vim/config/floaterm.vim'
execute 'source ~/.vim/config/fzf.vim'
