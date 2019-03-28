au BufRead,BufNewFile *.vue call SetVueModuleFindPath()
function SetVueModuleFindPath()
  set isfname+=@-@
  set includeexpr=substitute(v:fname,'@','src','g')
endfunction

