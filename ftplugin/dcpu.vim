" Vim filetype plugin
" Language:     DCPU-16 Assembler (Notch's virtual CPU, http://0x10c.com)
" Maintainer:   Luis Panadero Guardeñof <msarnoff.org>
"		Previus maintainer:
"		Matt Sarnoff <msarnoff.org>
" Last Change:  June 2, 2015
" URL:          https://github.com/Zardoz89/dcpu16-vim-syntax
" Revision:     1

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo-=C

" Comments start with ;
setlocal commentstring=;%s

let &cpo = s:cpo_save
unlet s:cpo_save


" vim: set ts=2 sw=2 tw=78 et :
