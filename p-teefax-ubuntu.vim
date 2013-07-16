
func! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunc

iabbr <silent> __A Ä<C-R>=Eatchar('\s')<CR>
iabbr <silent> __O Ö<C-R>=Eatchar('\s')<CR>
iabbr <silent> __U Ü<C-R>=Eatchar('\s')<CR>
iabbr <silent> __a ä<C-R>=Eatchar('\s')<CR>
iabbr <silent> __o ö<C-R>=Eatchar('\s')<CR>
iabbr <silent> __u ü<C-R>=Eatchar('\s')<CR>
iabbr <silent> __s ß<C-R>=Eatchar('\s')<CR>

