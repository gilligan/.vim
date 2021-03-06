
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


call arpeggio#load()
exec "Arpeggio inoremap fu function ()<Left>"
exec "Arpeggio inoremap {} {<CR>}<Up><End><CR>"
exec "Arpeggio inoremap gm GL.global.messages"
exec "Arpeggio inoremap rq GL.global.proxy.request({"
exec "Arpeggio inoremap ml GL.global.router.modifyLocation({<CR>});<Up><End><CR>"
exec "Arpeggio inoremap cp casper.then(function () {<CR>});<Up><End><CR>"
exec "Arpeggio inoremap a' ä"
exec "Arpeggio inoremap o' ö"
exec "Arpeggio inoremap u' ü"
exec "Arpeggio inoremap s' ß"

let g:sneak#streak = 1

nmap -  <Plug>(operator-replace)

let g:tmux_session="casper"
command! Casper execute ":Make " . expand("%:p")

let g:ctrlp_buftag_types = {
            \ 'javascript' : {
            \ 'bin': '/home/tpflug/.bin/tagsjs',
            \ 'args': '',
            \ },
            \ }

command! JSBeauty execute ":call ReplaceBeautified()"
function! ReplaceBeautified()
    exe "% !js-beautify -f -"
endfunction


let g:teefax_settings_loaded = 1
