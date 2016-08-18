" For use console dictionary 'sdcv'

let s:dictcmd='sdcv'
if executable(s:dictcmd)
  " Ctrl+K (Capical) will launch the dictionary
  map <C-K> :execute "!" . s:dictcmd . ' ' . expand('<cword>')<CR>
endif
