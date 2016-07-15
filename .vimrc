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

hi CursorLine term=reverse cterm=NONE  ctermbg=0    guibg=Grey40
" with CursorLine highlight "TODO" is turned to invisible on cursorline
hi Todo                    ctermfg=red ctermbg=NONE
set cursorline
"Highliht 80th column
set colorcolumn=80
hi ColorColumn term=reverse ctermbg=0
" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

highlight ExtraWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile * match ExtraWhitespace /\s\+$/
"set list
"set listchars=extends:»,precedes:«,trail:¶
"set listchars+=tab:\ \ 
"hi SpecialKey ctermbg=red
"augroup trailing
"  au!
"  au InsertEnter * :set listchars-=trail:¶
"  au InsertLeave * :set listchars+=trail:¶
"augroup END

" Enable gtags (GNU total)
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
let GtagsCscope_Absolute_Path = 1
set cscopetag

let g:mwDefaultHighlightingPalette = 'extended'
