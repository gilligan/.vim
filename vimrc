set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"
" bundles
"

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-rsi'
Bundle 'vim-scripts/slimv.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'Shougo/vimshell.git'
Bundle 'current-func-info.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/SingleCompile'
Bundle 'sjl/clam.vim.git'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc'
Bundle 'othree/html5.vim'
Bundle 'bkad/CamelCaseMotion'
Bundle 'juvenn/mustache.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'claco/jasmine.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'benmills/vimux.git'
Bundle 'Rykka/colorv.vim'
Bundle 'tomasr/molokai.git'
Bundle 'Conque-Shell'
Bundle 'tarruda/vim-conque-repl'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/matchit.zip'
Bundle 'sjl/splice.vim.git'
Bundle 'gregsexton/gitv.git'
Bundle 'vim-scripts/textobj-user'
Bundle 'vim-scripts/textobj-entire'
Bundle 'vim-scripts/textobj-line'
Bundle 'mbriggs/mark.vim'
Bundle 'bitc/vim-hdevtools'
Bundle 'vim-scripts/indenthaskell.vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'
Bundle 'kana/vim-textobj-lastpat'
Bundle 'kana/vim-textobj-diff'
Bundle 'sickill/vim-pasta'
Bundle 'vim-scripts/Decho.git'
Bundle 'Valloric/ListToggle'
Bundle 'Valloric/MatchTagAlways'
Bundle 'dpwright/vim-gf-ext'
Bundle 'dahu/vim-fanfingtastic'
Bundle 'helino/vim-json.git'
Bundle 'regedarek/ZoomWin'
Bundle 'goldfeld/vim-seek'
Bundle 'vim-scripts/loremipsum'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'thinca/vim-textobj-comment'
Bundle 'gcmt/psearch.vim'
Bundle 'vim-scripts/EditPlus'
Bundle 'chriskempson/base16-vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'airblade/vim-gitgutter'

Bundle 'gilligan/js-omni'
Bundle 'gilligan/vim-wai'
Bundle 'gilligan/textobj-gitgutter'

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
if filereadable('~/.vim/local.vim')
    so ~/.vim/local.vim
endif


