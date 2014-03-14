"
" ctrlp setings
"
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git','.project_root']
  let g:ctrlp_user_command =
    \ ['.git', 'cd %s && git ls-files . -co --exclude-standard']
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.project$\|\.metadata$\|\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$|\.dylib$',
  \ }
