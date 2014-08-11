" python specific settings here
au FileType python call SetPythonSettings()
function SetPythonSettings()
  set tabstop=4
  set shiftwidth=4
  set list
  set listchars=tab:▸\ ,extends:»,precedes:«
endfunction
