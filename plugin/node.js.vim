au BufRead,BufNewFile *.js call SetSuffixesadd()
function SetSuffixesadd()
  set suffixesadd+=.js
  set path+=$PWD/node_modules
endfunction
