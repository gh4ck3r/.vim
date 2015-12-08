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

set statusline=%-3.3n\ %f\ %r%#Error#%m%#Statusline#\ (%l/%L,\ %v)\ %P%=%h%w\ %y\ [%{&encoding}:%{&fileformat}]
set laststatus=2

"Used for logcat syntax highlight
au BufRead,BufNewFile *.logcat        set filetype=logcat
au BufRead,BufNewFile *.json          set filetype=javascript
au BufRead,BufNewFile *.jsm           set filetype=javascript
au BufRead,BufNewFile *.webapp	      set filetype=javascript
au BufRead,BufNewFile *.webidl	      set filetype=idl
au BufRead,BufNewFile *.md            set filetype=markdown
au BufRead,BufNewFile hg-editor-*.txt set filetype=hgcommit

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

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                   " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg  " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll           " compiled object files
set wildignore+=*.pyc                           " Python byte code

" Enable gtags (GNU total)
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
let GtagsCscope_Absolute_Path = 1
set cscopetag
