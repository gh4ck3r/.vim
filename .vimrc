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
set cindent
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
au BufRead,BufNewFile *.logcat  set filetype=logcat
au BufRead,BufNewFile *.json    set filetype=javascript
au BufRead,BufNewFile *.jsm     set filetype=javascript
au BufRead,BufNewFile *.webapp	set filetype=javascript
au BufRead,BufNewFile *.webidl	set filetype=idl
au BufRead,BufNewFile *.md      set filetype=markdown

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

filetype plugin on

hi CursorLine term=reverse cterm=NONE ctermbg=0 guibg=Grey40
set cursorline
"Highliht 80th column
set colorcolumn=80
" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800
