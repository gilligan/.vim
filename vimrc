set nocompatible
filetype off
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/vundle
set rtp+=~/.fzf
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
Bundle 'kana/vim-arpeggio'
Bundle 'bruno-/vim-vertical-move'

"Bundle "file:///home/gilligan/.vim/bundle/vim-textobj-haskell"
Bundle "gilligan/vim-textobj-haskell"

"
" searching, matching, marks
"
Bundle 'vim-scripts/matchit.zip'
Bundle 'mbriggs/mark.vim'
Bundle 'justinmk/vim-sneak'
Bundle 'wellle/targets.vim'

"
" haskell
"
Bundle 'dag/vim2hs'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'travitch/hasksyn.git'
Bundle 'Twinside/vim-hoogle'
Bundle 'carlohamalainen/ghcimportedfrom-vim'
Bundle 'ujihisa/unite-haskellimport'
Bundle 'eagletmt/unite-haddock'
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
Bundle 'sjl/clam.vim.git'
Bundle 'christoomey/vim-tmux-navigator'
"
" source control & diffing
"
Bundle 'sjl/splice.vim.git'
Bundle 'gregsexton/gitv.git'
Bundle 'mhinz/vim-signify'
Bundle 'AndrewRadev/gapply.vim'

"
" buffers & window manipulation
"
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'Majutsushi/tagbar'

"
" misc plugins
"
Bundle 'vim-scripts/UnconditionalPaste'
Bundle 'current-func-info.vim'
Bundle 'scrooloose/syntastic'
Bundle 'KabbAmine/zeavim.vim'
Bundle 'dbakker/vim-projectroot'
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

let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_diffmode="normal"
let g:solarized_hitrail=0
let g:solarized_menu=0

let g:molokai_original = 1
let g:rehash256 = 1

