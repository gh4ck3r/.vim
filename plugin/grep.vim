" Enhancement for grep things

" Use 'ag' instead of 'ack' if possible
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>A :Ack!<Space>
nnoremap <Leader>a :exec 'Ack!' expand('<cword>')<CR>
"vnoremap <Leader>a :exec 'Ack!' @*
