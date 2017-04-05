" Use advanced features of vim
set nocompatible

" Prevent unnecessary indentation when paste
" This spoils indentation functionalities
"set paste!

set ignorecase
set smartcase
set background=dark
set tabstop=2
set shiftwidth=2
set shiftround
set textwidth=80
set smarttab
set expandtab
set autoindent
set smartindent
"set cindent
set number
set nobackup
set noswapfile
set nowrap
set nowrapscan
set hlsearch
set incsearch
set matchpairs+=<:>
set showmatch
set fileencodings=utf-8,ucs-bom,euc-kr,latin1
set wildmode=list:longest,full
set splitright

map <C-w>V :tab split<CR>
map <C-w>v :vert belowright split<CR>
map <C-w>C :tabclose<CR>

" Settings for GUI environment
if has ("gui_running")
  colorscheme koehler
  set guifont=DejaVu\ Sans\ Mono
  "This is for unity on Ubuntu
  set guioptions+=f
endif

" Settings for Windows environment
if has ("win32") || has ("win16")
  lan mes en_US
endif

let s:mydir=fnamemodify(resolve(expand('<sfile>:p')),":h")
if &runtimepath !~ s:mydir
  exec "set runtimepath+=".s:mydir
endif

" Settings for pathogen (https://github.com/tpope/vim-pathogen)
exec pathogen#infect()
syntax on " This is not set on Windows
filetype plugin indent on

" Enable gtags (GNU total)
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
let GtagsCscope_Absolute_Path = 1
set cscopetag

let g:mwDefaultHighlightingPalette = 'extended'

" Save current file as root and reopen
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
