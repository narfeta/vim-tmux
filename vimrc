:set nu   
:set tabstop=4   
:set expandtab   
:set shiftwidth=4 
:set autoindent   
:set smartindent
:set foldmethod=indent
:set foldlevel=1
colorscheme desert
highlight LineNr ctermfg=DarkCyan ctermbg=DarkGray
let php_sql_query=1
let php_htmlInStrings=1
let php_parent_error_close=1
let php_parent_error_open=1
syntax on
let g:showfuncctagsbin = "/usr/bin/ctags"
filetype plugin indent on
filetype plugin on 
execute pathogen#infect()
" support for twig files
autocmd BufNewFile,BufRead *.html.twig   set syntax=html
autocmd BufNewFile,BufRead *.js.twig   set syntax=javascript
" powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
imap <C-t> print '<PRE>';var_dump($);print '</PRE>';<Esc>16hi
map <C-t> print '<PRE>';var_dump($);print '</PRE>';<Esc>16hi
imap <F2> <Esc>:NERDTree<CR>a
map <F2> <Esc>:NERDTree<CR>a
imap <F3> <Esc>:set nonu<CR>a
map <F3> <Esc>:set nonu<CR>a
imap <F4> <Esc>:set nu<CR>a
map <F4> <Esc>:set nu<CR>a
imap <F5> <Esc>:res +3<CR>
map <F5> <Esc>:res +3<CR>
imap <F6> <Esc>:res -3<CR>
map <F6> <Esc>:res -3<CR>
imap <F7> <Esc>:res +300000<CR>
map <F7> <Esc>:res +300000<CR>
imap <F8> <Esc>:res -300000<CR>
map <F8> <Esc>:res -300000<CR>
