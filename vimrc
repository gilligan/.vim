set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"
" bundles
"

Bundle 'gmarik/vundle'

"
" tpope plugins
"
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-obsession'

"
" code completion
"
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

"
" javascript & web
"
Bundle 'othree/html5.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'claco/jasmine.vim'
Bundle 'vim-scripts/loremipsum'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'mattn/zencoding-vim'
Bundle 'Rykka/colorv.vim'
Bundle 'marijnh/tern_for_vim'

"
" text objects & motions
"
Bundle 'vim-scripts/textobj-user'
Bundle 'vim-scripts/textobj-entire'
Bundle 'vim-scripts/textobj-line'
Bundle 'kana/vim-textobj-lastpat'
Bundle 'kana/vim-textobj-diff'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'thinca/vim-textobj-comment'
Bundle 'gilligan/textobj-gitgutter'
Bundle 'bkad/CamelCaseMotion'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'terryma/vim-expand-region'
Bundle 'Lokaltog/vim-easymotion'

"
" searching, matching, marks
"
Bundle 'dahu/vim-fanfingtastic'
Bundle 'vim-scripts/matchit.zip'
Bundle 'mbriggs/mark.vim'
Bundle 'goldfeld/vim-seek'
Bundle 'gcmt/psearch.vim'
Bundle 'Valloric/MatchTagAlways'
Bundle 'gcmt/breeze.vim'

"
" haskell
"
Bundle 'vim-scripts/indenthaskell.vim'
Bundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'
Bundle 'dag/vim2hs'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'lukerandall/haskellmode-vim'

"
" LISP
"
Bundle 'vim-scripts/slimv.vim'

"
" themes / file type plugins
"
Bundle 'Lokaltog/vim-powerline'
Bundle 'tomasr/molokai.git'
Bundle 'vim-scripts/EditPlus'
Bundle 'helino/vim-json.git'

"
" shell & interaction
"
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell.git'
Bundle 'benmills/vimux.git'
Bundle 'Conque-Shell'
Bundle 'tarruda/vim-conque-repl'
Bundle 'sjl/clam.vim.git'

"
" source control & diffing
"
Bundle 'sjl/splice.vim.git'
Bundle 'gregsexton/gitv.git'
Bundle 'http://www.tidraso.co.uk/repository/vim-plugin/'
"Bundle 'airblade/vim-gitgutter'

"
" buffers & window manipulation
"
Bundle 'kien/ctrlp.vim'
Bundle 'regedarek/ZoomWin'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'Valloric/ListToggle'
Bundle 'mhinz/vim-startify'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'

"
" misc plugins
"
Bundle 'vim-scripts/Decho.git'
Bundle 'vim-scripts/UnconditionalPaste'
Bundle 'gilligan/vim-wai'
Bundle 'current-func-info.vim'
Bundle 'vim-scripts/SingleCompile'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'


filetype plugin indent on

"
" load all plugin settings from separate files
"
for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
    exe 'source' f
endfor

"
" load local overrides
"
let local_config = glob('~/.vim/')  . hostname() . '.vim'
if filereadable(local_config)
    exe 'source ' . local_config
endif
