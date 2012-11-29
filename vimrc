set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"
" bundles
"

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/slimv.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'Shougo/vimshell.git'
Bundle 'current-func-info.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/SingleCompile'
Bundle 'sjl/threesome.vim'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc'
Bundle 'zeekay/vim-space'
Bundle 'othree/html5.vim'
Bundle 'alfredodeza/chapa.vim'
Bundle 'bkad/CamelCaseMotion'
Bundle 'juvenn/mustache.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'claco/jasmine.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'benmills/vimux.git'
Bundle 'Rykka/colorv.vim'
Bundle 'tomasr/molokai.git'
Bundle 'epmatsw/ag.vim'
Bundle 'Conque-Shell'
Bundle 'tarruda/vim-conque-repl'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/matchit.zip'
Bundle 'sjl/splice.vim.git'
Bundle 'gregsexton/gitv.git'
Bundle 'gilligan/vim-bebop'
Bundle 'vim-scripts/YankRing.vim'
filetype plugin indent on



" fix neocomplcache behavior
" with arrow keys
let g:neocomplcache_enable_insert_char_pre=1

"
" global settings
"
" global settings {{{
let g:molokai_original = 1
syntax on            " enable syntax highlightning
set nocp             " no compatible mode
set ambiwidth=double " display icons correctly
set gdefault         " always enable greedy mode
set ignorecase       " ignore case in searches
set smartcase        " smarter ignorecase
set ruler            " show ruler
set cursorline       " higlight cursor line
set tags=./tags;     " look for tags in current dir and up
set nu               " show line numbers
set cmdheight=2      " cmd line is 2 lines high
set wmh=0            " minimal window height is 0
set expandtab        " expand tab with spaces
set tabstop=4        " tab = 4 spaces
set shiftwidth=4     " shift by 4 spaces
set softtabstop=4    " tab equals 4 spaces
set laststatus=2     " always show status
set background=light " light background color
set incsearch        " search incrementally
set grepprg=grep\ -nH\ $* " print filename for match
set backspace=indent,eol,start " make backspace behave
set showmatch        " quickly jump to matching bracket
set cindent          " enable automatic C indenting
set autoindent       " copy indentation to next line
set viminfo=%,!,'50,\"100,:100,n~/.viminfo
set noerrorbells     " don't annoy me
set t_vb=            " really, don't do it
set guioptions-=r    " disable gui stuff
set guioptions-=T    " disable gui stuff
set guioptions-=m    " disable gui stuff
set guioptions-=l    " disable gui stuff
set guioptions-=L    " disable gui stuff
set nobackup         " no useless backup files
set noswapfile       " no useless swap files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignore patterns for completion
set nohidden
set autochdir         " change directory to current file working dir
let g:rct_completion_use_fri = 1
set clipboard=unnamed " clipboard = unnamed reg for easy interaction
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
colo editplus

" Use Q to intelligently close a window
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" global settings }}}


" commands {{{
" command for reviewing issues
command! -nargs=1 ReviewTicket :Glog --grep=<args> --
" }}}


" general mappings {{{
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :BebopJsEval<CR>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
map <C-\> :CtrlPBufTag<cr>
noremap <leader><space> :noh<cr>
nmap <leader>gt :call TimeLapse()<cr>
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
" paste clipboard contents
map ,p "+p
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
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
" list lines containing word under cursor
map ,l [I:let nr = input("select: ")<Bar>exe "normal " . nr ."[\t"<CR>
map ,L :execute ":%s@\\<" . expand("<cword>") . "\\>\@&@gn"<CR>
" change word with previously yanked text
noremap S diw"0P
" jump to end of current {} block
imap <C-j> <C-o>:normal ]}$<CR>
" overwrite current word with yank buffer
nnoremap ,ow "_diwhp
" add semicolon to end of line
nnoremap ;; A;<esc>
" go to last edit location
nnoremap ,. '.
" paste current file name to clipboard
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>

noremap ,hl :set hlsearch! hlsearch?<CR>
" general mappings }}}


" buffer commands {{{
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
" }}}


" font settings {{{
if has("gui")
    let g:Powerline_symbols = 'fancy'
    if has("gui_macvim")
        set guifont=Inconsolata\ for\ Powerline:h14
    else
        set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
    endif
endif


" }}}
" abbrevations {{{
function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

"autocmd Filetype javascript call MakeSpacelessIabbrev('function(', 'function (')
"autocmd Filetype javascript call MakeSpacelessIabbrev(',',', ')
" }}}

"
" plugin settings
"

"surround plugin {{{
nmap \' ysiw'
nmap \" ysiw"
nmap \[ ysiw[
nmap \( ysiw(
nmap \< ysiw<
"}}}


"fugitive plugin {{{
autocmd QuickFixCmdPost *grep* cwindow
" }}}


" camelcase mappings {{{
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie
" }}}



" syntastic plugin {{{
"
let g:syntastic_javascript_checker="jshint"
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_warnings=0
" }}}


" slimv settings {{{
"
let g:slimv_keybindings=1
let g:paredit_mode=0
let g:slimv_impl='sbcl'
let g:slimv_ctags='/usr/local/bin/ctags'
let g:lisp_rainbow=1
" }}}


" ctrlp setings {{{
let g:ctrlp_working_path_mode = 2
let g:ctrlp_root_markers = ['.git','.project_root']
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.project$\|\.metadata$\|\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$|\.dylib$',
  \ }
" }}}


" neosnippet settings {{{
	" Plugin key-mappings.
	imap <C-space>     <Plug>(neosnippet_expand_or_jump)
	smap <C-space>     <Plug>(neosnippet_expand_or_jump)
	xmap <C-space>     <Plug>(neosnippet_expand_target)

	" For snippet_complete marker.
	if has('conceal')
	  set conceallevel=2 concealcursor=i
	endif
" }}}


" neocmplcache settings {{{

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 4

"imap <C-space>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-]> neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns['default'] = '\h\w*'
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
" }}}


" neosnippet plugin {{{
let g:neosnippet#snippets_directory="~/.vim/snippets"
" }}}


" chapa plugin {{{
let g:chapa_default_mappings = 1
" }}}


" vim-slime plugin {{{
let g:slime_target = "tmux"
xmap <leader>s <Plug>SlimeRegionSend
nmap <leader>s <Plug>SlimeParagraphSend
" }}}

" colorv plugin{{{
let g:colorv_preview_ftype="scss,css,html,javascript"
" }}}

" yankring plugin {{{
let g:yankring_replace_n_pkey = '\p'
let g:yankring_replace_n_nkey = '\P'
" }}}

"
" misc settings
"

" Remove Trailing Whitespace {{{
func! s:StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    normal `Z
endf
au FileType * au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()`
" }}}


" completion settings {{{
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
" }}}

" resize splits when window is resized {{{
au VimResized * exe "normal! \<c-w>="
" }}}


" javascript settings/ whitespace fixes {{{
"func! s:FixFunctionDecl()
    "normal mZ
    "%s/\ function(/function\ (/e
    "normal `Z
"endf
"au FileType javascript au BufWritePre <buffer> :silent! call <SID>FixFunctionDecl()`
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter javascript match ExtraWhitespace /\s\+$/
autocmd InsertEnter javascript match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave javascript match ExtraWhitespace /\s\+$/
autocmd BufWinLeave javascript call clearmatches()
" }}}


" show whitespace characters in gui {{{
if has ('gui_running')
    set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
endif
" }}}


" vim: fdm=marker foldlevel=1 nofoldenable
