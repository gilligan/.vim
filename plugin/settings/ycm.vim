" you complete me
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0

" you complete me + utilsnips integration
if filereadable($HOME . "/.vim/bundle/YouCompleteMe/python/ycm_core.so")
    function! g:UltiSnips_Complete()
        call UltiSnips_ExpandSnippet()
        if g:ulti_expand_res == 0
            if pumvisible()
                return "\<C-n>"
            else
                call UltiSnips_JumpForwards()
                if g:ulti_jump_forwards_res == 0
                    return "\<TAB>"
                endif
            endif
        endif
        return ""
    endfunction

    au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
endif
