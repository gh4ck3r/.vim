au BufRead,BufNewFile *.js call SetNodeJsSuffixesadd()
au BufRead,BufNewFile *.ts call SetNodeJsSuffixesadd()
au BufRead,BufNewFile *.ts call SetVueModuleFindPath()
au BufRead,BufNewFile *.vue call SetVueModuleFindPath()
function SetVueModuleFindPath()
  set isfname+=@-@
  set includeexpr=substitute(v:fname,'@/','src/','g')
endfunction

