if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

nnoremap <Space> <Nop>
let mapleader = "\<Space>"
"
" bundles
"

NeoBundle 'godlygeek/tabular'

"
" tpope plugins
"
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-markdown'

"
" code completion
"
NeoBundle 'Valloric/YouCompleteMe', {'build': {'mac': './install.sh'}}
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
"
" javascript & web
"
NeoBundle 'othree/html5.vim'
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-scripts/loremipsum'
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Rykka/colorv.vim'
NeoBundle 'marijnh/tern_for_vim'

"
" text objects & motions
"
NeoBundle 'vim-scripts/textobj-user'
NeoBundle 'vim-scripts/textobj-entire'
NeoBundle 'vim-scripts/textobj-line'
NeoBundle 'kana/vim-textobj-lastpat'
NeoBundle 'kana/vim-textobj-diff'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'vim-scripts/argtextobj.vim'
NeoBundle 'thinca/vim-textobj-comment'
NeoBundle 'gilligan/textobj-lastpaste'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 't9md/vim-choosewin'
NeoBundle 'kana/vim-arpeggio'
NeoBundle 'bruno-/vim-vertical-move'
NeoBundle 'gcmt/wildfire.vim'

"
" searching, matching, marks
"
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'mbriggs/mark.vim'
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'gcmt/breeze.vim'
NeoBundle 'justinmk/vim-sneak'

"
" haskell
"
NeoBundle 'dag/vim2hs'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'https://github.com/adinapoli/cumino.git'

"
" LISP
"
NeoBundle 'vim-scripts/slimv.vim'

"
" themes / file type plugins
"
NeoBundle 'bling/vim-airline'
NeoBundle 'tomasr/molokai.git'
NeoBundle 'vim-scripts/EditPlus'
NeoBundle 'helino/vim-json.git'
NeoBundle 'Lucius'
NeoBundle 'morhetz/gruvbox.git'

"
" shell & interaction
"
NeoBundle 'Shougo/vimproc',  {'build': {'mac': 'g:make'}}
NeoBundle 'Shougo/vimshell.git'
NeoBundle 'benmills/vimux.git'
NeoBundle 'Conque-Shell'
NeoBundle 'tarruda/vim-conque-repl'
NeoBundle 'sjl/clam.vim.git'

"
" source control & diffing
"
NeoBundle 'sjl/splice.vim.git'
NeoBundle 'gregsexton/gitv.git'
NeoBundle 'mhinz/vim-signify'

"
" buffers & window manipulation
"
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'jeetsukumaran/vim-buffergator'
NeoBundle 'Valloric/ListToggle'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'

"
" misc plugins
"
NeoBundle 'vim-scripts/Decho.git'
NeoBundle 'vim-scripts/UnconditionalPaste'
NeoBundle 'gilligan/vim-wai'
NeoBundle 'current-func-info.vim'
NeoBundle 'vim-scripts/SingleCompile'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'itchyny/thumbnail.vim'
NeoBundle 'gerw/vim-HiLinkTrace'

NeoBundle 'gilligan/vim-snesdev'
NeoBundle 'gilligan/vim-lldb'

"
" load host specific bundles
"
exe 'source ~/.vim/bundles.' . hostname() . '.vim'

"
" end of bundle configurations
"

filetype plugin indent on
NeoBundleCheck

set background=dark
set t_Co=256
colo molokai

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

