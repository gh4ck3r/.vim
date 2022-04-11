" Settings for YouCompleteMe
" http://ycm-core.github.io/YouCompleteMe/#the-gycm_global_ycm_extra_conf-option

let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1
      \}

let g:ycm_filetype_specific_completion_to_disable = {
      \'gitcommit': 1
      \}

if exists("g:ale_sign_error")
  let g:ycm_error_symbol = g:ale_sign_error
endif
if exists("g:ale_sign_warning")
  let g:ycm_warning_symbol = g:ale_sign_warning
endif

let g:ycm_collect_identifiers_from_comments_and_strings = 1

" YCM will auto-close the preview window after the user leaves insert mode.
let g:ycm_autoclose_preview_window_after_completion = 1

" Load .ycm_extra_conf.py without asking if it's detected
let g:ycm_confirm_extra_conf = 0

" A data to pass .ycm_extra_conf.py
let g:ycm_extra_conf_vim_data = []
" fallback extra configuration
let g:ycm_global_ycm_extra_conf = resolve(
      \ globpath(&rtp, 'compiler/ycm_global_extra_conf.py')
      \ )

" FIXME : use tag stack :h settagstack
"autocmd FileType cpp map <buffer> <C-]> :YcmCompleter GoTo<CR>

"let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
"let g:ycm_server_use_vim_stdout = 0
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

"let g:ALE_open = function('ale#util#Open')
" :call g:ALE_open("main/main/AgentMainService.cc", 377, 10, {})
"function! ale#util#Open(filename, line, column, options) abort
"  g:ALE_open(a:filename, a:line, a:column, a:options)
"endfunction

"function TagFunc(pattern, flags, info)
"  return [
"        \ {'name': 'hello', 'filename': 'main/main/AgentMainService.cc', 'cmd': '378'}
"        \]
"endfunc
"set tagfunc=TagFunc