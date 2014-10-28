set nocompatible
filetype off
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/vundle
set rtp+=~/.fzf
call vundle#begin()

nnoremap <Space> <Nop>
let mapleader = "\<Space>"
"
" bundles
"

Plugin 'gmarik/vundle'
Plugin 'godlygeek/tabular'

"
" tpope plugins
"
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'

"
" code completion
"
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"
" javascript & web
"
Plugin 'othree/html5.vim'
Plugin 'juvenn/mustache.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-scripts/loremipsum'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'mattn/emmet-vim'
Plugin 'marijnh/tern_for_vim'

"
" text objects & motions
"
Plugin 'vim-scripts/textobj-user'
Plugin 'vim-scripts/textobj-entire'
Plugin 'vim-scripts/textobj-line'
Plugin 'kana/vim-textobj-lastpat'
Plugin 'kana/vim-textobj-diff'
Plugin 'kana/vim-textobj-syntax'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'thinca/vim-textobj-comment'
Plugin 'gilligan/textobj-lastpaste'
Plugin 'bkad/CamelCaseMotion'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'terryma/vim-expand-region'
Plugin 'kana/vim-arpeggio'
Plugin 'bruno-/vim-vertical-move'
Plugin 'gilligan/vim-textobj-haskell'

"
" searching, matching, marks
"
Plugin 'vim-scripts/matchit.zip'
Plugin 'mbriggs/mark.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'wellle/targets.vim'
Plugin 'haya14busa/incsearch.vim'

"
" haskell
"
Plugin 'dag/vim2hs'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'ujihisa/neco-ghc'
Plugin 'travitch/hasksyn.git'
Plugin 'Twinside/vim-hoogle'
Plugin 'carlohamalainen/ghcimportedfrom-vim'
Plugin 'ujihisa/unite-haskellimport'
Plugin 'eagletmt/unite-haddock'
"
" themes / file type plugins
"
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai.git'
Plugin 'vim-scripts/EditPlus'
Plugin 'helino/vim-json.git'
Plugin 'Lucius'

"
" shell & interaction
"
Plugin 'Shougo/vimproc'
Plugin 'Shougo/vimshell.git'
Plugin 'benmills/vimux.git'
Plugin 'sjl/clam.vim.git'
Plugin 'christoomey/vim-tmux-navigator'
"
" source control & diffing
"
Plugin 'sjl/splice.vim.git'
Plugin 'gregsexton/gitv.git'
Plugin 'mhinz/vim-signify'
Plugin 'AndrewRadev/gapply.vim'

"
" buffers & window manipulation
"
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/ListToggle'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'Majutsushi/tagbar'

"
" misc plugins
"
Plugin 'vim-scripts/UnconditionalPaste'
Plugin 'current-func-info.vim'
Plugin 'scrooloose/syntastic'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'dbakker/vim-projectroot'
"
" load host specific bundles
"
exe 'source ~/.vim/bundles.' . hostname() . '.vim'

"
" end of bundle configurations
"


set background=dark
set t_Co=256
filetype plugin indent on
call vundle#end()


colo molokai
call unite#custom_default_action('haddock', 'browse_remote')

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

let g:molokai_original = 1
let g:rehash256 = 1

