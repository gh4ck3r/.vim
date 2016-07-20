" statusline.vim - Decorate statusline
" Maintainer: Changbin Park(gh4ck3r@gmail.com)

set laststatus=2  " Show statusline always

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#bufferline#enabled = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " shows tab number
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t:.'

let g:airline_section_a = '' "airline#section#create(['file'])
let g:airline_section_c = '%t'
