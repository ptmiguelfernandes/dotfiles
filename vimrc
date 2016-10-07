set nocompatible

execute pathogen#infect()
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
"set background=light
"colorscheme solarized
colorscheme xoria256

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

"Rubocop shortcut
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

":set guioptions-=m "remove menu bar
:set guioptions-=T "remove toolbar
:set guioptions-=r "remove right-hand scroll bar
:set guioptions-=L "remove left-hand scroll bar

"NERDTree
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
"autocmd vimenter * NERDTree
cd ~/projects
map <Leader>nt :NERDTree %:p:h<CR>
map <Leader>ntt :NERDTreeToggle<CR>
map <F8> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"  GRB: use fancy buffer closing that doesn"t close the split
cnoremap <expr> bd (getcmdtype() == ":" ? "Bclose" : "bd")

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = "ra"

"Emmet
let g:user_emmet_leader_key="<C-c>"

"Bootstrap Snippets
set dictionary+=~/.vim/bundle/bootstrap-snippets/dictionary
set complete+=k

"CoffeeScript
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"snipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases["ruby"] = "ruby,rails"

"vim-airline default theme
let g:airline_theme="jellybeans"
"see branch in airline status
let g:airline#extensions#branch#enabled = 1

"vim-indent-guides
let g:indent_guides_color_change_percent = 5

"test.vim
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

if &term =~ "256color"
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

"syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <F7> ::SyntasticToggleMode<CR>

"Bind nohl to F3
nnoremap <F3> :nohl<CR>

"Default vim Explore
let g:netrw_liststyle=3

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <silent> <Leader>j :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>k :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>h :exe "resize " . (winwidth(0) * 2/3)<CR>
nnoremap <silent> <Leader>l :exe "resize " . (winwidth(0) * 2/3)<CR>

"vim-instant-markdown - consume less resources. stop realtime.
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

"vim-gist
let g:gist_clip_command = 'xclip -selection clipboard'
