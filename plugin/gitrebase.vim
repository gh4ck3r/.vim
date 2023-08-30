if (exists("b:did_gitrebase_plugin"))
  finish
endif
let b:did_ftplugin = 1

setlocal keywordprg=git\ show
