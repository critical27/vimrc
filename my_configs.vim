set nu
set nocompatible
set shortmess=atI

if has("multi_byte") 
    " UTF-8 编码 
    set encoding=utf-8 
    set termencoding=utf-8 
    set formatoptions+=mM 
    set fencs=utf-8,gbk
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)' 
        set ambiwidth=double 
    endif
    if has("win32")
        source $VIMRUNTIME/delmenu.vim 
        source $VIMRUNTIME/menu.vim 
        language messages zh_CN.utf-8 
    endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif

nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-z> "+gp
imap <c-z> <esc>"+gpi
nmap <c-a> ggVG
imap <c-a> <esc>ggVG

nmap <s-tab> :tabnext<cr>
imap <s-tab> <ESC> :tabnext<cr>

let g:nerdtree_tabs_open_on_console_startup=1

map <F9> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F9> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags;

let g:tagbar_right=1
nmap <F10> :TagbarToggle<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

