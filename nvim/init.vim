"Don't try to be vi compatible

set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load Plugins here(pathogen or vundle)
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"YouCompleteMe
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'donraphaco/neotex'
Plugin 'sheerun/vim-polyglot'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'shougo/deoplete.vim'
" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

"Blink cursor on error instead of beeping (grr)
"set visualbell

"Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

"Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> "use % to jump between pairs

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

"Last Line
set showmode
set showcmd

"Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>" clear search

"Formatting
map <leader>q gqip

"Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

map <leader>l :set list!<CR> " Toggle tabs and EOL

"Allow saving of files as sudo when i forget to start vim using sudo

cmap w!! w !sudo tee > /dev/null %

"Keybind to open NERDTree

map <C-n> :NERDTreeToggle<CR>
