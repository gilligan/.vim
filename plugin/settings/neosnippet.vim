"
" neosnippet settings {{{
"

imap <C-space>     <Plug>(neosnippet_expand_or_jump)
smap <C-space>     <Plug>(neosnippet_expand_or_jump)
xmap <C-space>     <Plug>(neosnippet_expand_target)

if has('conceal')
    set conceallevel=2 concealcursor=i
endif

let g:neosnippet#snippets_directory="~/.vim/snippets"
