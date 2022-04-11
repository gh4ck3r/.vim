" python specific settings here
au FileType python call SetPythonSettings()
function SetPythonSettings()
  setlocal tabstop=2
  setlocal shiftwidth=2
  setlocal list
  setlocal listchars=tab:▸\ ,extends:»,precedes:«
endfunction
