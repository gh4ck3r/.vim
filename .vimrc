" Use advanced features of vim
set nocompatible

" Prevent unnecessary indentation when paste
" This spoils indentation functionalities
"set paste!

set ignorecase
set smartcase
set background=dark
set tabstop=4
set shiftwidth=4
set smarttab
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
au BufRead,BufNewFile *.xbl     set filetype=xbl

map <C-w>V :tab split<CR>

" Settings for GUI environment
if has ("gui_running")
	colorscheme koehler
	set guifont=DejaVu\ Sans\ Mono\ 9
	"This is for unity on Ubuntu
	set guioptions+=f
endif

" Settings for Windows environment
if has ("win32") || has ("win16")
endif

let s:mydir=fnamemodify(resolve(expand('<sfile>:p')),":h")
if &runtimepath !~ s:mydir
	exec "set runtimepath+=".s:mydir
endif

