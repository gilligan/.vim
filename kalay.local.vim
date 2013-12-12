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
" mac only dash plugin
"
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'gerw/vim-HiLinkTrace'
Bundle 'mattn/webapi-vim'
Bundle 'kana/vim-arpeggio'
Bundle 'bruno-/vim-vertical-move'


"
" plugin tests
"
Bundle 't9md/vim-textmanip'
Bundle 'itchyny/thumbnail.vim'

xmap <D-j> <Plug>(textmanip-move-down)
xmap <D-k> <Plug>(textmanip-move-up)
xmap <D-h> <Plug>(textmanip-move-left)
xmap <D-l> <Plug>(textmanip-move-right)
