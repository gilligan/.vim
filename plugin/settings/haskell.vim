let $PATH = $PATH . ':' . expand("~/.cabal/bin")
au BufEnter *.hs compiler ghc
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
