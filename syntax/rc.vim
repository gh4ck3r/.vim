" Vim syntax file -- redirect *.rc file to AIL(Android Init Language)
" Language:	Android Init Language (*.rc)
" Writer:	Changbin Park <gh4ck3r@gmail.com>
" Last Change:	2015 Dec 20

if !has("win32")
  " *.rc files are used to be M$ Resource files but it might not used to be
  " handled out of win32 environment. Treat it Android Init Language in that
  " case
  set syntax=ail
endif
