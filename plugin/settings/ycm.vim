" you complete me
let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_confirm_extra_conf = 0

" let g:ycm_key_invoke_completion = '<S-Space>'
" since mapping <S-Space> is a bit of a problem
" in the terminal the solution is to use xmodmap
" to remap S-Space to something else and use that
" in vim :
" $ xmodmap -e 'keycode 65 = space <F13> space'
let g:ycm_key_invoke_completion = '<S-F8>'



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsExpandTrigger = "<C-@>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

