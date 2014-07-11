"
" font/theme settings
"
set t_Co=256
if has("gui")
    "colorscheme editplus
    let g:Powerline_symbols = 'fancy'
    if has("gui_macvim")
        set guifont=Inconsolata\ for\ Powerline:h14
        highlight Cursor guifg=white guibg=steelblue
        highlight iCursor guifg=white guibg=steelblue
    else
        set guifont=Inconsolata\ Medium\ 10
        "set guifont=ProggyCleanTT\ 12
    endif
else
    let g:Powerline_symbols = 'compatible'
    let g:Powerline_dividers_override = ['||', '|', '||', '|']
    let NERDTreeDirArrows=0
endif

let g:molokai_original = 1
set showtabline=0

"
" show whitespace characters in gui
"
"if has ('gui_running')
"    set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"endif
