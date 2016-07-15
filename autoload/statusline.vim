" statuslime.vim - Decorate statusline
" Maintainer: Changbin Park(gh4ck3r@gmail.com)

" Install in ~/.vim/autoload (or ~\vimfiles\autoload).

if exists("g:loaded_statusline")
  finish
endif
let g:loaded_statusline = 1

function! statusline#decorate()
  highlight GitBranch     term=bold,reverse cterm=bold,reverse ctermbg=2 gui=bold

  set statusline=%-3.3n " buffer number
  set statusline+=\ %f  " filename
  set statusline+=\ %r  " reaonly flags -> [RO]
  set statusline+=%#Error#%m%#Statusline# " Modified flag --> [+] or [-]
  set statusline+=\ (%l/%L,\ %v)  " line of (current/total, column)
  set statusline+=\ %P  " Percentage of file
  set statusline+=%=    " Separator
  set statusline+=%h    " Help buffer flag -> [help]
  set statusline+=%w    " Preview window flag -> [Preview]
  set statusline+=%#GitBranch#%{fugitive#statusline()}%#StatusLine#  " Git branch info
  set statusline+=\ %y  " filetype
  set statusline+=\ [%{&encoding}:%{&fileformat}]

  set laststatus=2  " Show statusline always
endfunction
