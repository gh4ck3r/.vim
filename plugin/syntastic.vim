
autocmd FileType c   call ConfigSyntastic('c')
autocmd FileType cpp call ConfigSyntastic('cpp')

function ConfigSyntastic(filetype)
  if a:filetype == 'c'
    let g:syntastic_c_include_dirs = []
  elseif a:filetype == 'cpp'
    let g:syntastic_cpp_compiler_options = ' -std=c++11'
    let g:syntastic_cpp_include_dirs = []
  endif
endfunction
