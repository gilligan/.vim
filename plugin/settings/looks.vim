"
" font/theme settings
"
set t_Co=256
if has("gui")
    colorscheme editplus
    let g:Powerline_symbols = 'fancy'
    highlight Cursor guifg=white guibg=steelblue
    highlight iCursor guifg=white guibg=steelblue
    if has("gui_macvim")
        set guifont=Inconsolata\ for\ Powerline:h14
    else
        set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
    endif
else
    let g:Powerline_symbols = 'compatible'
    let g:Powerline_dividers_override = ['||', '|', '||', '|']
    let NERDTreeDirArrows=0
endif

"
" show whitespace characters in gui
"
if has ('gui_running')
    set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
endif
