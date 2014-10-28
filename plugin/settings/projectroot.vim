au BufEnter * if &ft != 'help' | call ProjectRootCD() | endif
let g:rootmarkers = ['.projectroot', 'Setup.hs', '.git','.hg','.svn','.bzr','_darcs','build.xml']
