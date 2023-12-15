" vim:fdm=marker:ts=2:sw=2
let g:ale_echo_cursor=1

let g:ale_sign_error='✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_c_parse_makefile = 1
let g:ale_c_parse_compile_commands = 1
let g:ale_c_build_dir_names = ['build', 'bin']

" Common options for gcc/clang {{{
let g:ale_cpp_gcc_options = ''
let g:ale_cpp_gcc_options .= ' -std=c++20'
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
      \ ' --std=c++20'.
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

let g:ale_cpp_flawfinder_minlevel = 3
let g:ale_cpp_clangtidy_options='-std=c++20'

":noremap <C-[><C-]> :ALEGoToDefinition<CR>
