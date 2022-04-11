" For use ripgrep instead of grep if available
if executable("rg")
  set grepprg=rg\ --vimgrep
endif
