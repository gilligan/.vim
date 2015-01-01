highlight Visual ctermbg=darkred
highlight Normal ctermbg=NONE
set tags=tags;/,codex.tags;/

function KeyboardSetup()
    if filereadable("~/.Xmodmap")
        system("xmodmap ~/.Xmodmap")
    endif
endfunction
call KeyboardSetup()
