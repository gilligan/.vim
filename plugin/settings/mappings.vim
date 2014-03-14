" general mappings {{{

"
" Function keys
"
map <F2> :NERDTreeToggle<CR>
map <S-F2> :NERDTreeFind<CR>
map <F3> :TagbarToggle<CR>
map <F4> :ConqueTermSplit bash<CR>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

" ctrlp mappings
map <C-\> :CtrlPBufTag<cr>
map <C-t> :CtrlPTag<cr>

" go to start/end of line
imap <C-E> <C-O>$
imap <C-A> <C-O>^

" use arrow keys for window navigation
map <C-Up>   <C-W>k<C-W>_
map <C-Down> <C-W>j<C-W>_
map <C-Left> <C-W>h<C-W>_
map <C-Right> <C-W>l<C-W>_

" paste clipboard contents
map ,p "+p
nmap  ,q  :bd<CR>

" list lines containing word under cursor
map ,l [I:let nr = input("select: ")<Bar>exe "normal " . nr ."[\t"<CR>
" list occurences count of word under cursor
map ,L :execute ":%s@\\<" . expand("<cword>") . "\\>\@&@gn"<CR>


" use arrow keys for window manipulation
nnoremap <silent> <Up> <C-w>+<C-w>+
nnoremap <silent> <Down> <C-w>-<C-w>-
nnoremap <silent> <Left> <C-w><<C-w><
nnoremap <silent> <Right> <C-w>><C-w>>

nnoremap <leader><CR> :NERDTreeToggle<CR>

" general mappings }}}

