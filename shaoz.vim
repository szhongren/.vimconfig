" vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" features
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'kien/ctrlp.vim'

" appearance
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'yggdroot/indentline'

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

" vim behavior
set autoindent
set foldenable
set foldmethod=indent
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

" vim appearance
colorscheme badwolf

set background=dark
set cursorcolumn
set cursorline
set expandtab
set softtabstop=4
set tabstop=4

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

syntax enable

" leader
let mapleader = " "
let maplocalleader = "\\"

" airline
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1

" ctrlp
let g:ctrlp_map = '<leader><c-p>'
let g:ctrlp_cmd = 'CtrlP'

" indentline
let g:indentLine_setColors = 0

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
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vimrc quick edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" nonrecur mappings
nnoremap <leader>_ ddkP
nnoremap <leader>- ddp
nnoremap <localleader><c-u> viwU
inoremap <localleader><c-u> <esc>viwUi
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>Bi'<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>v
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>v
nnoremap H 0
nnoremap L $

" abbrevs
iabbrev @@ shao.zhongren@gmail.com
iabbrev iam Zhongren Shao
