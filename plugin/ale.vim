let g:ale_echo_cursor=1

let g:ale_sign_error='✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_c_parse_makefile = 1
let g:ale_c_parse_compile_commands = 1
