set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/slimv.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/argtextobj'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Shougo/vimshell.git'
Bundle 'current-func-info.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/SingleCompile'
Bundle 'sjl/threesome.vim'
Bundle 'scrooloose/syntastic'
Bundle 'claco/jasmine.vim'
Bundle 'majutsushi/tagbar'
Bundle 'gilligan/vim-bebop'
Bundle 'Shougo/neocomplcache'
Bundle 'neocomplcache-snippets-complete'
Bundle 'Shougo/vimproc'
Bundle 'zeekay/vim-space'
Bundle 'othree/html5.vim'
Bundle 'alfredodeza/chapa.vim'
Bundle 'bkad/CamelCaseMotion'
Bundle 'juvenn/mustache.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'spolu/dwm.vim'

filetype plugin on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" -------------------------------------------------------------------
"
" global settings
"
" -------------------------------------------------------------------
"

let g:complType=1
let g:bebop_enabled=1
let g:bebop_enable_js=1

syntax on
filetype plugin on
filetype indent on

omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie


"autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif


" command for reviewing issues
command! -nargs=1 ReviewTicket :Glog --grep=<args> --

map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :BebopJsEval<CR>

set nofoldenable
set autochdir

if has("gui")
    let g:Powerline_symbols = 'fancy'
    if has("gui_macvim")
        set guifont=Inconsolata\ for\ Powerline:h14
    else
        set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
        "set guifont=Inconsolata:h14
    endif
endif

set ambiwidth=double
set scrolloff=3
set gdefault
set ignorecase
set smartcase
set ruler
set cursorline
set tags=./tags;
set nu
set cmdheight=2
set wmh=0
set nocp
set path+=.,/usr/share/qt4/include/**
set inc=^\\s*\\%(#\\s*include\\\\|\\.INCLUDE\\)\\s\\+
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set laststatus=2
set background=light
set incsearch
set nohlsearch
set grepprg=grep\ -nH\ $*
set backspace=indent,eol,start
set sw=4
set sm
set cindent
set autoindent
set viminfo=%,!,'50,\"100,:100,n~/.viminfo
set showcmd
set incsearch
set hlsearch
set nohidden
set noerrorbells
set t_vb=

set guioptions-=r
set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=L

set nobackup
set noswapfile
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" -------------------------------------------------------------------
"
" plugin settings
"
" -------------------------------------------------------------------

" clojure settings
"
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let vimclojure#NailgunClient = "/usr/local/bin/ng"
let vimclojure#WantNailgun = 1

" syntastic settings
"
let g:syntastic_javascript_checker="jshint"

" SingleCompile settings
"

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

let OmniCpp_ShowPrototypeInAbbr=1
let TList_Process_File_Always=1
let TList_Display_Prototype=1
let Tlist_Show_One_File=1

" slimv settings
"
let g:slimv_keybindings=1
let g:paredit_mode=0
let g:slimv_impl='sbcl'
let g:slimv_ctags='/usr/local/bin/ctags'
let g:lisp_rainbow=1

" powerline settings
"let g:cfi_disable=1

" ctrlp setings
"
let g:ctrlp_working_path_mode = 2
let g:ctrlp_root_markers = ['.git','.project_root']
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.project$\|\.metadata$\|\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$|\.dylib$',
  \ }

" -------------------------------------------------------------------
"
" abbrevations
"
" -------------------------------------------------------------------

function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

autocmd Filetype javascript call MakeSpacelessIabbrev('function(', 'function (')
autocmd Filetype javascript call MakeSpacelessIabbrev(',',', ')

iab Ydate	<C-R>=strftime("%y%m%d")<CR>
iab Ydated	<C-R>=strftime("%Y-%m-%d")<CR>
iab Ydatel	<C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab Ydatetime	<C-R>=strftime("%y%m%d %T")<CR>
iab Ytime	<C-R>=strftime("%H:%M")<CR>

" -------------------------------------------------------------------
" commands
" -------------------------------------------------------------------
"autocmd FileType javascript command! Fixjs :%!fixmyjs %:p
"map <C-f> :execute ":w !fixmyjs " . expand("%")<CR>:edit<CR>

" -------------------------------------------------------------------
"
" mappings
"
" -------------------------------------------------------------------

"if has("gui_macvim")
"macmenu &File.New\ Tab key=<nop>
"map <D-t> :CommandT<CR>
"endif

imap <c-g> <esc>:tag

nmap <leader>gt :call TimeLapse()<cr>

nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>rt :CommandTFlush<cr>
nnoremap <leader><space> :noh<cr>

" use \r to run ruby code
nmap \r :rubyf %:p<CR>
let g:rct_completion_use_fri = 1

" maximize window
map ,M <C-W>_

" go to start/end of line
imap <C-E> <C-O>$
imap <C-A> <C-O>0

" use arrow keys for window navigation
map <C-Up>   <C-W>k<C-W>_
map <C-Down> <C-W>j<C-W>_
map <C-Left> <C-W>h<C-W>_
map <C-Right> <C-W>l<C-W>_

" shortcut to yank current line in normal mode
nmap yl y1$

"indent whole buffer
map <C-i> mA1=G'A

" paste clipboard contents
map ,p "*p


" snes help mappings:
nmap  ,fr :execute 'help ' . expand('<cword>')<CR>
nmap  ,q  :bd<CR>

" add doxygen comment template
map ,dx :Dox<CR>

map ,r :rubyf %<CR>

" move up one line
" and insert new indented line
" below with Command-k
imap <D-k> <ESC>ko

" insert empty line and
" return to normal mode
map <C-b> <ESC>o<ESC>

set winminheight=0
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
" move line down
map <C-l>j :m+<CR>=$
" move line down
map <C-l>k :m-2<CR>=$

" list lines containing
" word under cursor
map ,l [I:let nr = input("select: ")<Bar>exe "normal " . nr ."[\t"<CR>

"alter the errorformat slightly so the error
"highlightning plugin can differentiate between
"warnings and errors
let &errorformat="%f:%l: %t%*[^:]:%m," . &errorformat

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

if has("python")
    command! -nargs=+ Calc :py print <args>
    py from math import *
endif

" automatically source vimrc after writing to it
au BufWritePost .vimrc so ~/.vimrc

" use ; to enter command mode
nnoremap ; :

" resize splits when window is resized
au VimResized * exe "normal! \<c-w>="

au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete

" Remove Trailing Whitespace {{{
func! s:StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    normal `Z
endf
au FileType * au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()`
" }}}


func! s:FixFunctionDecl()
    normal mZ
    %s/\ function(/function\ (/e
    normal `Z
endf
au FileType javascript au BufWritePre <buffer> :silent! call <SID>FixFunctionDecl()`

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter javascript match ExtraWhitespace /\s\+$/
autocmd InsertEnter javascript match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave javascript match ExtraWhitespace /\s\+$/
autocmd BufWinLeave javascript call clearmatches()

if has ('gui_running')
    set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
endif

imap <C-k> <Plug>(neocomplcache_snippets_expand)
let g:chapa_default_mappings = 1

"source ~/.vim/misc-functions.vim
"source ~/.vim/snes.vim
source ~/.vim/neo.vim
