set nocompatible

syntax on
filetype plugin indent on
set ignorecase
set hlsearch
set autoindent
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set ts=2 sts=2 sw=2 expandtab
set smartcase
set gdefault
set incsearch
set showmatch
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
set noswapfile
set langmenu=en_US
" spell check
autocmd BufRead,BufNewFile *.md setlocal spell
set nospell
" Disable all blinking
set guicursor+=n:hor5-Cursor/lCursor
set guicursor+=i:ver5-Cursor/lCursor
"set guicursor+=a:blinkon0
let $LANG = "en_US"

"syntax enable
"colorscheme default

"Trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <F2> :call <SID>StripTrailingWhitespaces()<CR>

if &term =~ "256color"
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
