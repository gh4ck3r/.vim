" For use console dictionary 'sdcv'

if executable('sdcv')
  " Ctrl+K (Capical) will launch the dictionary
  map <C-K> :execute '!sdcv ' . expand('<cword>')<CR>
endif
