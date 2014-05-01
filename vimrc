set nocompatible
filetype off
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

nnoremap <Space> <Nop>
let mapleader = "\<Space>"
"
" bundles
"

Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'

"
" tpope plugins
"
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-markdown'

"
" code completion
"
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"
" javascript & web
"
Bundle 'othree/html5.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/loremipsum'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'mattn/emmet-vim'
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
Bundle 'kana/vim-textobj-syntax'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'thinca/vim-textobj-comment'
Bundle 'gilligan/textobj-lastpaste'
Bundle 'bkad/CamelCaseMotion'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'terryma/vim-expand-region'
Bundle 't9md/vim-choosewin'
Bundle 'kana/vim-arpeggio'
Bundle 'bruno-/vim-vertical-move'
Bundle 'gcmt/wildfire.vim'

"
" searching, matching, marks
"
Bundle 'vim-scripts/matchit.zip'
Bundle 'mbriggs/mark.vim'
Bundle 'Valloric/MatchTagAlways'
Bundle 'gcmt/breeze.vim'
Bundle 'justinmk/vim-sneak'
Bundle 'wellle/targets.vim'

"
" haskell
"
Bundle 'dag/vim2hs'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'https://github.com/adinapoli/cumino.git'
Bundle 'dkasak/haskellFoldIndent'
Bundle 'Twinside/vim-hoogle'

"
" LISP
"
Bundle 'vim-scripts/slimv.vim'

"
" themes / file type plugins
"
Bundle 'bling/vim-airline'
Bundle 'tomasr/molokai.git'
Bundle 'vim-scripts/EditPlus'
Bundle 'helino/vim-json.git'
Bundle 'Lucius'

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
Bundle 'mhinz/vim-signify'

"
" buffers & window manipulation
"
Bundle 'kien/ctrlp.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'
Bundle 'Majutsushi/tagbar'

"
" misc plugins
"
Bundle 'vim-scripts/Decho.git'
Bundle 'vim-scripts/UnconditionalPaste'
Bundle 'gilligan/vim-wai'
Bundle 'current-func-info.vim'
Bundle 'vim-scripts/SingleCompile'
Bundle 'scrooloose/syntastic'
Bundle 'itchyny/thumbnail.vim'
Bundle 'gerw/vim-HiLinkTrace'

Bundle 'gilligan/vim-snesdev'
Bundle 'gilligan/vim-lldb'

"
" load host specific bundles
"
exe 'source ~/.vim/bundles.' . hostname() . '.vim'

"
" end of bundle configurations
"

set background=dark
set t_Co=256
colo molokai
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
exe 'source ~/.vim/' . hostname() . '.vim'

