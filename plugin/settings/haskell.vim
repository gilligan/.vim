let $PATH = $PATH . ':' . expand("~/.cabal/bin")
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType haskell setlocal nofoldenable
autocmd FileType haskell setlocal conceallevel=0
autocmd FileType haskell compiler hlint
