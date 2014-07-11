" commands {{{
" command for reviewing issues
command! -nargs=1 ReviewTicket :Glog --grep=<args> --

" create tags for haskell project
command! Codex :!codex update
" }}}
