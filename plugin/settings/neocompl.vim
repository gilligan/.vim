" fix neocomplcache behavior
" with arrow keys
let g:neocomplcache_enable_insert_char_pre=1

inoremap <expr><C-h> neocomplcache#close_popup() . "\<Left>"
inoremap <expr><C-l> neocomplcache#close_popup() . "\<Right>"
inoremap <expr><C-k> neocomplcache#close_popup() . "\<Up>"
inoremap <expr><C-j> neocomplcache#close_popup() . "\<Down>"

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 0
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 4
let g:neocomplcache_enable_auto_close_preview = 1
"imap <C-space>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-]> neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript,coffee setlocal omnifunc=tern#Complete

" disabled because too slow
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns = {}
let g:neocomplcache_omni_patterns['default'] = '\h\w*'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.javascript = '[^. *\t]\w*\|[^. *\t]\.\%(\h\w*\)\?'

" disabled because too slow:
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

