" For any plugins that use this, make their keymappings use comma
if !executable('fzf')
  finish
endif

let mapleader = ","
nnoremap <unique> ; zz:Buffers<CR>
nnoremap <unique> <Leader>t zz:Tags<CR>
nnoremap <unique> <Leader>f zz:Files<CR>
nnoremap <unique> <Leader>a zz:Ag<CR>
"nmap <unique> <Leader>c :Colors<CR>
unlet mapleader

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow -g "!{.git,node_modules,.cache}/*" 2>/dev/null'
else
  autocmd VimEnter * echohl WarningMsg | echon 'rg is recommended for fzf' | echohl None
endif


function! s:update_fzf_colors()
  let rules =
  \ { 'fg':      [['Normal',       'fg']],
    \ 'bg':      [['Normal',       'bg']],
    \ 'hl':      [['String',       'fg']],
    \ 'fg+':     [['CursorColumn', 'fg'], ['Normal', 'fg']],
    \ 'bg+':     [['CursorColumn', 'bg']],
    \ 'hl+':     [['String',       'fg']],
    \ 'info':    [['PreProc',      'fg']],
    \ 'prompt':  [['Conditional',  'fg']],
    \ 'pointer': [['Exception',    'fg']],
    \ 'marker':  [['Keyword',      'fg']],
    \ 'spinner': [['Label',        'fg']],
    \ 'header':  [['Comment',      'fg']] }
  let cols = []
  for [name, pairs] in items(rules)
    for pair in pairs
      let code = synIDattr(synIDtrans(hlID(pair[0])), pair[1])
      if !empty(name) && code != ''
        call add(cols, name.':'.code)
        break
      endif
    endfor
  endfor
  let s:orig_fzf_default_opts = get(s:, 'orig_fzf_default_opts', $FZF_DEFAULT_OPTS)
  let $FZF_DEFAULT_OPTS = s:orig_fzf_default_opts .
        \ (empty(cols) ? '' : (' --color='.join(cols, ',')))
endfunction

augroup _fzf
  autocmd!
  autocmd VimEnter,ColorScheme * call <sid>update_fzf_colors()
augroup END
