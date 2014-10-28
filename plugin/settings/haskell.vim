let $PATH = $PATH . ':' . expand("~/.cabal/bin")

"
" vim2hs settings
"

let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
let g:hpaste_author = 'gilligan'
let g:haskell_conceal = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_quasi         = 0
let g:haskell_interpolation = 0
let g:haskell_regex         = 0
let g:haskell_jmacro        = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 0
let g:haskell_json          = 0
let g:haskell_xml           = 0
let g:haskell_hsp           = 0
let g:haskell_no_indent     = 1

"
" configuration for tagbar
"
if executable('lushtags')
    let g:tagbar_type_haskell = {
        \ 'ctagsbin' : 'lushtags',
        \ 'ctagsargs' : '--ignore-parse-error --',
        \ 'kinds' : [
            \ 'm:module:0',
            \ 'e:exports:1',
            \ 'i:imports:1',
            \ 't:declarations:0',
            \ 'd:declarations:1',
            \ 'n:declarations:1',
            \ 'f:functions:0',
            \ 'c:constructors:0'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 'd' : 'data',
            \ 'n' : 'newtype',
            \ 'c' : 'constructor',
            \ 't' : 'type'
        \ },
        \ 'scope2kind' : {
            \ 'data' : 'd',
            \ 'newtype' : 'n',
            \ 'constructor' : 'c',
            \ 'type' : 't'
        \ }
    \ }
endif

"
" configuration for ctrlp
"
let g:ctrlp_buftag_types = {
  \ 'haskell' : {
    \ 'bin': 'lushtags',
    \ 'args': '--ignore-parse-error --',
    \ },
  \ }

"
" arpeggio mappings for ultisnips
"

call arpeggio#load()
Arpeggio inoremap <Space>i if<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <Space>c case<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <Space>; ::<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <Space>d def<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <Space>f =<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <Space>g \|<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>
Arpeggio inoremap <Space>l \<Space><Esc>:call UltiSnips#ExpandSnippet()<CR>




"
" configuration for syntastic
"
let g:syntastic_haskell_checkers = ['ghc_mod', 'hlint']

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType haskell setlocal nofoldenable
autocmd FileType haskell setlocal conceallevel=0
autocmd FileType haskell compiler hlint


function! GhciReload()
    call VimuxSendText(":r")
    call VimuxSendKeys("Enter")
endfunction

nnoremap <leader>h= :execute "Tabularize haskell_bindings"<CR>
nnoremap <leader>ht :execute "GhcModType!"<CR>
nnoremap <leader>hT :execute "GhcModTypeInsert!"<CR>
nnoremap <leader>hc :execute "GhcModTypeClear"<CR>
nnoremap <leader>hi :execute "GhcModInfoPreview!"<CR>
nnoremap <leader>hh :execute "GhcImportedFromOpenHaddock"<CR>
nnoremap <leader>hI :execute "Unite -start-insert haskellimport"<CR>
nnoremap <leader>hr :call GhciReload()<CR>
nnoremap <leader>hs :execute "Unite hoogle"<CR>
nnoremap <leader>hb k0yiWjpA
