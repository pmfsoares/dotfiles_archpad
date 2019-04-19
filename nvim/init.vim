set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'dylanaraps/wal.vim'
Plugin 'bling/vim-bufferline'
Plugin 'kien/ctrlp.vim'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/nerdtree'
Plugin 'alvan/vim-closetag'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" see :h vundle for more details or wiki for FAQ
syntax on

" set termguicolors
" bufferline shit
let g:bufferline_echo = 1
let g:bufferline_show_bufnr = 1

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

"colorscheme 
colorscheme wal
set background=dark " for the dark version
let g:one_allow_italics = 1

set mouse=a "enable mouse interaction in all modes
"Identation

" show existing tab with 2 spaces width
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

"Numbers
set relativenumber
set number

" Toggle center scrolloff 
:nnoremap <Leader>zz :let &scrolloff=10-&scrolloff<CR><Paste>

" add prolog syntax support
let g:filetype_pl="prolog"


" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" use system default clipboard
set clipboard=unnamed

" tab thought buffer
" hidden so that i dont have to save everytime i change buffer

:set hidden
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'

":W saves
command WQ wq
command Wq wq
command W w
command Q q

" escape in normal mode does :noh
nnoremap <ESC> :noh<CR>

"set typescript
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

"auto reload files
set autoread

" q closes goyo
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  Limelight
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

nnoremap <leader>n :NERDTreeToggle<CR>
