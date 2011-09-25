runtime! debian.vim

if has("syntax")
  syntax on
endif


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set nocompatible
let Tlist_Ctags_Cmd='ctags'
let Tlist_Auto_Open=1
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Update = 1
let Tlist_File_Fold_Auto_Close=1

nnoremap <silent> <F3> :Grep<CR>
map <F4> :NERDTreeToggle<CR>
imap <F4> <ESC>:NERDTreeToggle<CR>

" config f nerdtree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile='/root/.vim/tree.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='right'
let NERDTreeWinSize=31
"
filetype plugin on
set diffexpr=MyDiff()
set tags=tags
set autochdir
set nu
set cin
set ts=4
set sw=4
set expandtab
set showmatch
set matchtime=1
set guifont=Courier:h15:cANSI
set cursorline
set smartindent 
let &termencoding=&encoding
set helplang=cn
set langmenu=zh_CN.UTF-8

set history=1000
set nobackup
set noswapfile

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set completeopt=longest,menu
nnoremap <silent> <F3> :Grep<CR>
set columns=80
set ruler
set textwidth=80

" File type related autosetting
au FileType diff  setlocal shiftwidth=4 tabstop=4
au FileType changelog setlocal textwidth=80
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType perl set omnifunc=perlcomplete#Complete
if has("autocmd") && exists("+omnifunc")
     autocmd Filetype *
   \ if &omnifunc == "" |
   \   setlocal omnifunc=syntaxcomplete#Complete |
   \ endif
endif

" nmap key
vmap <C-c> "yy
vmap <C-x> "yd
"nmap <C-v> "yp
"    vmap <C-v> "yp
nmap <C-a> ggvG$
"  nmap wv     <C-w>v    
nmap wc     <C-w>c   
"nmap ws     <C-w>s 

