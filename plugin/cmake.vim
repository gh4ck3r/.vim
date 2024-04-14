" CMake dedicated settings here
au FileType cmake call SetCMakeOptions()
function SetCMakeOptions()
  setlocal iskeyword+=-
endfunction

