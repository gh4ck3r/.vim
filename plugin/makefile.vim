" Makefile dedicated settings here
au FileType make call SetMakefileOptions()
function SetMakefileOptions()
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal noexpandtab
  setlocal iskeyword+=-
endfunction
