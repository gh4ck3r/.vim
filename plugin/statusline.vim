" statusline.vim - Decorate statusline
" Maintainer: Changbin Park(gh4ck3r@gmail.com)

set laststatus=2  " Show statusline always

" XXX: :help airline for more detail

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

" If a file is edited, that is not yet in the repository, the
" notexists symbol will be displayed after the branch name.
let g:airline_symbols.notexists = ' ∄'

let g:airline#extensions#bufferline#enabled = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " shows tab number
let g:airline#extensions#tabline#fnamemod = ':t:.'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'
let g:airline#extensions#tabline#buffer_min_count = 9999
let g:airline#extensions#tabline#tab_min_count = 2

" :help airline-sections for more detail
let g:airline_section_a = '' "airline#section#create(['file'])
let g:airline_section_c = '%t'
let g:airline_section_x = airline#section#create(['%{SyntaxItem()}', 'filetype'])

function! StyleInactiveStatusLine(...)
  " See :help airline-pipeline for more detail
  let builder = a:1

  call builder.add_section('inactive_style', '%#StatuslineNC#')
  return 0   " the default: draw the rest of the statusline
endfunction
call airline#add_inactive_statusline_func('StyleInactiveStatusLine')

function! SyntaxItem()
  return synIDattr(synID(line('.'),col('.'),1),'name').' '
endfunction
