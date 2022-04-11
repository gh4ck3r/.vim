" vim:fdm=marker:ts=2:sw=2
let g:ale_echo_cursor=1

let g:ale_sign_error='✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_c_parse_makefile = 1
let g:ale_c_parse_compile_commands = 1

" Common options for gcc/clang {{{
let g:ale_cpp_gcc_options = ''
let g:ale_cpp_gcc_options .= ' -std=c++17'
let g:ale_cpp_gcc_options .=
      \ ' -Wall'.
      \ ' -Wextra'.
      \ ' -Wdouble-promotion'.
      \ ' -Wformat-security'.
      \ ' -Wnull-dereference'.
      \ ' -Wignored-attributes'.
      \ ' -Wmissing-include-dirs'.
      \ ' -Wunused'.
      \ ' -Wmissing-format-attribute'.
      \ ' -Wfloat-equal'.
      \ ' -Wundef'.
      \ ' -Wcast-qual'.
      \ ' -Wcast-align'.
      \ ' -Wconversion'.
      \ ' -Wzero-as-null-pointer-constant'.
      \ ' -Wdate-time'.
      \ ' -Wdelete-incomplete'.
      \ ' -Wmissing-declarations'.
      \ ' -Wredundant-decls'.
      \ ' -Winline'.
      \ ' -Wdisabled-optimization'.
      \ ' -Woverlength-strings'.
      \ ''
let g:ale_cpp_clang_options = g:ale_cpp_gcc_options
let g:ale_cpp_clang_options .=
      \ ' --std=c++17'.
      \ ' -Wno-pragma-once-outside-header'.
      \ ''
" }}}

" Extra options only for gcc {{{
let g:ale_cpp_gcc_options .=
      \ ' -Wformat-overflow'.
      \ ' -Wformat-truncation'.
      \ ' -Wformat-signedness'.
      \ ' -Wswitch-unreachable'.
      \ ' -Wsync-nand'.
      \ ' -Wstringop-overflow'.
      \ ' -Wsuggest-attribute=pure'.
      \ ' -Wsuggest-attribute=const'.
      \ ' -Wsuggest-attribute=noreturn'.
      \ ' -Wsuggest-attribute=format'.
      \ ' -Wsuggest-final-types'.
      \ ' -Wsuggest-final-methods'.
      \ ' -Wsuggest-override'.
      \ ' -Walloc-zero'.
      \ ' -Wduplicated-branches'.
      \ ' -Wduplicated-cond'.
      \ ' -Wtrampolines'.
      \ ' -Wshadow'.
      \ ' -Wshadow=global'.
      \ ' -Wshadow=local'.
      \ ' -Wshadow=compatible-local'.
      \ ' -Wpointer-compare'.
      \ ' -Wuseless-cast'.
      \ ' -Wlogical-op'.
      \ ' -Wrestrict'.
      \ ''
" }}}

" Settings only for header files {{{
function! ALECheckCppHeader()
  if index(['h', 'hh', 'hpp', 'h++', 'hxx'], expand('%:e')) != -1
    let b:ale_cpp_clang_options = g:ale_cpp_clang_options.
          \ ' -Wno-unused-const-variable'.
          \ ''
  endif
endfunction
autocmd FileType c,cpp call ALECheckCppHeader()
" }}}

" Settings for CPPLINT {{{
call ale#Set('cpp_cpplint_options', '--filter='.
      \ '-legal/copyright,-readability/nolint,+build/c++14'.
      \ '')
" }}}

" Settings for python {{{
let g:ale_python_flake8_executable='python3 -m flake8'
" }}}

let g:ale_cpp_ccls_init_options = {
\   'cache': {
\       'directory': '/tmp/ccls/cache'
\   }
\ }

"function! Push_tag()
"  echom "hi!!"
"  <Plug>(ale_go_to_definition)
"  let l:winnr = winnr()
"  let l:cur_stack = gettagstack(l:winnr)
"  echom "curidx " .l:cur_stack.
"  echom l:cur_stack.items
"endfunction
":noremap <C-[><C-]> :call Push_tag()<CR>
:noremap <C-[><C-]> :ALEGoToDefinition<CR>
":noremap <C-[><C-]> :YcmCompleter GoTo<CR>

"" Store where we're jumping from.
"let pos = [bufnr()] + getcurpos()[1:]
"let item = {'bufnr': pos[0], 'from': pos, 'tagname': expand('<cword>')}
"YourCommandToJumpToCWord
"
"" Assuming jump was successful, write to tag stack.
"let winid = win_getid()
"let stack = gettagstack(winid)
"let stack['items'] = [item]
"call settagstack(winid, stack, 't')

let g:ale_cpp_clangtidy_options='-std=c++17'
