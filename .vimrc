call pathogen#infect()
syntax on
filetype plugin indent on
set mouse=a
set tabstop=4
set hidden
let g:racer_cmd = "/home/creativcoder/git/racer/target/release/racer"
let $RUST_SRC_PATH="/home/creativcoder/git/rust-lang/rust/src"

autocmd vimenter * NERDTree
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" User def functions

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
