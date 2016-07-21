hi CursorLine term=reverse cterm=NONE  ctermbg=0    guibg=Grey40
" with CursorLine highlight "TODO" is turned to invisible on cursorline
hi Todo                    ctermfg=red ctermbg=NONE
set cursorline
"Highliht 80th column
set colorcolumn=80
hi ColorColumn term=reverse ctermbg=233
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
