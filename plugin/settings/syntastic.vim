"
" syntastic plugin
"
let g:syntastic_javascript_checkers = ['jshint']
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=0
" always fill the location list with the errors
let g:syntastic_always_populate_loc_list=1
"don't care about warnings
"let g:syntastic_quiet_messages = { 'level': 'warnings' }
