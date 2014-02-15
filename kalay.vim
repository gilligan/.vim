"
" macbook pro specific settings
"


"
" Set alt keys to meta on osx
"
if has('gui_macvim')
    set macmeta
endif

"

xmap <D-j> <Plug>(textmanip-move-down)
xmap <D-k> <Plug>(textmanip-move-up)
xmap <D-h> <Plug>(textmanip-move-left)
xmap <D-l> <Plug>(textmanip-move-right)

let g:kalay_settings_loaded = 1
