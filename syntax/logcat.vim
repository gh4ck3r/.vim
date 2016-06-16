" Vim syntax file
" Language:         logcat
" Maintainer:       Naseer Ahmed <naseer.ahmed@gmail.com>
" Latest Revision:  2009-08-10

if exists("b:current_syntax")
    finish
endif

"Define colors
hi def LogF_color ctermfg=white guifg=white ctermbg=red guibg=red
hi def LogE_color ctermfg=red guifg=red
hi def LogW_color ctermfg=brown guifg=brown
hi def LogI_color ctermfg=green guifg=green
hi def LogD_color ctermfg=blue guifg=blue
hi def LogV_color ctermfg=gray guifg=gray

" Cover format brief
syn match LogFBrief '^F/\w*\s*(\s*\d\+):\s.*'
syn match LogEBrief '^E/\w*\s*(\s*\d\+):\s.*'
syn match LogWBrief '^W/\w*\s*(\s*\d\+):\s.*'
syn match LogIBrief '^I/\w*\s*(\s*\d\+):\s.*'
syn match LogDBrief '^D/\w*\s*(\s*\d\+):\s.*'
syn match LogVBrief '^V/\w*\s*(\s*\d\+):\s.*'

hi def link LogFBrief LogF_color
hi def link LogEBrief LogE_color
hi def link LogWBrief LogW_color
hi def link LogIBrief LogI_color
hi def link LogDBrief LogD_color
hi def link LogVBrief LogV_color

" Covers format printable & usec
syn match LogFPrintable '^\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3,6}\s\+\d\+\s\+\d\+ F .*'
syn match LogEPrintable '^\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3,6}\s\+\d\+\s\+\d\+ E .*'
syn match LogWPrintable '^\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3,6}\s\+\d\+\s\+\d\+ W .*'
syn match LogIPrintable '^\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3,6}\s\+\d\+\s\+\d\+ I .*'
syn match LogDPrintable '^\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3,6}\s\+\d\+\s\+\d\+ D .*'
syn match LogVPrintable '^\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3,6}\s\+\d\+\s\+\d\+ V .*'

hi def link LogFPrintable LogF_color
hi def link LogEPrintable LogE_color
hi def link LogWPrintable LogW_color
hi def link LogIPrintable LogI_color
hi def link LogDPrintable LogD_color
hi def link LogVPrintable LogV_color

" Covers format time, tag
syn match LogFTime '^\(\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3} \)\?F/.*'
syn match LogETime '^\(\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3} \)\?E/.*'
syn match LogWTime '^\(\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3} \)\?W/.*'
syn match LogITime '^\(\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3} \)\?I/.*'
syn match LogDTime '^\(\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3} \)\?D/.*'
syn match LogVTime '^\(\d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3} \)\?V/.*'

hi def link LogFTime LogF_color
hi def link LogETime LogE_color
hi def link LogWTime LogW_color
hi def link LogITime LogI_color
hi def link LogDTime LogD_color
hi def link LogVTime LogV_color

" Covers format thread and process
syn match LogFProcess '^F(\s*\d\+\(:\s*\d\+\)\?) .*'
syn match LogEProcess '^E(\s*\d\+\(:\s*\d\+\)\?) .*'
syn match LogWProcess '^W(\s*\d\+\(:\s*\d\+\)\?) .*'
syn match LogIProcess '^I(\s*\d\+\(:\s*\d\+\)\?) .*'
syn match LogDProcess '^D(\s*\d\+\(:\s*\d\+\)\?) .*'
syn match LogVProcess '^V(\s*\d\+\(:\s*\d\+\)\?) .*'

hi def link LogFProcess LogF_color
hi def link LogEProcess LogE_color
hi def link LogWProcess LogW_color
hi def link LogIProcess LogI_color
hi def link LogDProcess LogD_color
hi def link LogVProcess LogV_color

syn region LogFLong start='^\[ \d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s\+\d\+:\s*\d\+ F/.*\]$' end='^$'
syn region LogELong start='^\[ \d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s\+\d\+:\s*\d\+ E/.*\]$' end='^$'
syn region LogWLong start='^\[ \d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s\+\d\+:\s*\d\+ W/.*\]$' end='^$'
syn region LogILong start='^\[ \d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s\+\d\+:\s*\d\+ I/.*\]$' end='^$'
syn region LogDLong start='^\[ \d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s\+\d\+:\s*\d\+ D/.*\]$' end='^$'
syn region LogVLong start='^\[ \d\{2}-\d\{2}\s\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s\+\d\+:\s*\d\+ V/.*\]$' end='^$'

hi def link LogFLong LogF_color
hi def link LogELong LogE_color
hi def link LogWLong LogW_color
hi def link LogILong LogI_color
hi def link LogDLong LogD_color
hi def link LogVLong LogV_color
