" Purpose: Vim global plugin to autocorrect a common fat-fingerings
" Author:  Kazark <kazark@zoho.com>
" License: Public Domain

if exists('g:loaded_FatFingerFixes')
    finish
endif
let g:loaded_FatFingerFixes=1

let s:save_cpo = &cpo
set cpo&vim

function FatFingerFixes#init()
    " I sometimes flail for the <Enter> key and hit <'> as well
    cnoremap w'<CR> w<CR>
    cnoremap wq'<CR> wq<CR>

    " I often hold down <Shift> too long when typing :noh
    cnoremap Noh noh
endfunction

let &cpo = s:save_cpo
