"=============================================================================
" mail.vim --- SpaceVim mail layer
" Copyright (c) 2016-2020 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

function! SpaceVim#layers#mail#plugins() abort
    return [
            \ ['vim-mail/vim-mail',{ 'merged' : 0, 'loadconf' : 1}],
            \ ]
endfunction


function! SpaceVim#layers#mail#config() abort
    call SpaceVim#mapping#space#def('nnoremap', ['a', 'm'], 'call mail#client#open()', 'Start mail client', 1)
endfunction

function! SpaceVim#layers#mail#health() abort
  call SpaceVim#layers#mail#plugins()
  call SpaceVim#layers#mail#config()
  return 1
endfunction
