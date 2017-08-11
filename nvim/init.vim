jset nocompatible              " be iMproved, required
set encoding=utf-8

call plug#begin('~/.vim/plugged')

" features
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
" Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'rust-lang/rust.vim'

" appearance
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'yggdroot/indentline'

call plug#end()

" vim behavior
set autoindent
set foldenable
set incsearch
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set lazyredraw
set mouse=a
set number
set relativenumber
set ruler
set showcmd
set showmatch
set visualbell
set wildmenu

filetype indent on
filetype plugin on

" vim appearance
colorscheme badwolf

" set background=dark
set cursorline
set expandtab
set softtabstop=4
set tabstop=4

hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=darkgrey guifg=white
hi Search       cterm=NONE ctermbg=white ctermfg=NONE guibg=white    guifg=black

syntax enable

" leader
let mapleader = " "
let maplocalleader = "//"

" airline
let g:airline_theme='behelit'
let g:airline#extensions#tabline#enabled=1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" indentline
let g:indentLine_char = "┆"
let g:indentLine_concealcursor = ""
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1

" ripgrep
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" ycm python semantic
let g:ycm_python_binary_path = 'python'

" ycm rust semantic
let g:ycm_rust_src_path = 'C:/Users/shaoz/.rustup/toolchains/stable-x86_64-pc-windows-msvc/lib/rustlib/src/rust/src'
