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

map <leader>tt :terminal<cr>

let g:tagbar_right=1
nmap <F10> :TagbarToggle<CR>
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
