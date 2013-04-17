" general mappings {{{
map <F2> :NERDTreeToggle<CR>
map <S-F2> :NERDTreeFind<CR>
map <F3> :TagbarToggle<CR>
map <F4> :ConqueTermSplit bash<CR>
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

" select current javascript function
vmap <Leader>jf :normal va{oF(b<CR>
" select current javascript function including
" possible name preceding the function statement
vmap <Leader>jF :normal va{oF(b^<CR>

"happy-hacking-esque insert mode movement
"imap <C-j> <Down>
"imap <C-k> <Up>
"imap <C-h> <Left>
"imap <C-l> <Right>

" use arrow keys for window manipulation
nnoremap <silent> <Up> <C-w>+<C-w>+
nnoremap <silent> <Down> <C-w>-<C-w>-
nnoremap <silent> <Left> <C-w><<C-w><
nnoremap <silent> <Right> <C-w>><C-w>>

" start editing on first non-whitespace char of current line
imap <C-i> <C-O>^
nmap <C-i> ^i

" replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" general mappings }}}

