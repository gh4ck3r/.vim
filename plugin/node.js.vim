au BufRead,BufNewFile *.js call SetNodeJsSuffixesadd()
function SetNodeJsSuffixesadd()
  set suffixesadd+=.js
  set path+=$PWD/node_modules
endfunction
