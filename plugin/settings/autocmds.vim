"
" Show trailing whitespaces
"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter javascript match ExtraWhitespace /\s\+$/
autocmd InsertEnter javascript match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave javascript match ExtraWhitespace /\s\+$/
autocmd BufWinLeave javascript call clearmatches()
autocmd FileType javascript setlocal nofoldenable

"
" Remove Trailing Whitespace
"
func! s:StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    normal `Z
endf
au FileType * au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()`

"
" Resize splits when window is resized
"
au VimResized * exe "normal! \<c-w>="


"
" Go to last editing position
"
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
