" global settings {{{
syntax on            " enable syntax highlightning
set nocp             " no compatible mode
set ambiwidth=double " display icons correctly
set gdefault         " always enable greedy mode
set ignorecase       " ignore case in searches
set smartcase        " smarter ignorecase
set ruler            " show ruler
set cursorline       " higlight cursor line
set tags=./tags;     " look for tags in current dir and up
set nu               " show line numbers
set cmdheight=2      " cmd line is 2 lines high
set wmh=0            " minimal window height is 0
set expandtab        " expand tab with spaces
set tabstop=4        " tab = 4 spaces
set shiftwidth=4     " shift by 4 spaces
set softtabstop=4    " tab equals 4 spaces
set laststatus=2     " always show status
set background=light " light background color
set incsearch        " search incrementally
set grepprg=grep\ -nH\ $* " print filename for match
set backspace=indent,eol,start " make backspace behave
set showmatch        " quickly jump to matching bracket
set cindent          " enable automatic C indenting
set autoindent       " copy indentation to next line
set viminfo=%,!,'50,\"100,:100,n~/.viminfo
set noerrorbells     " don't annoy me
set t_vb=            " really, don't do it
set guioptions-=r    " disable gui stuff
set guioptions-=T    " disable gui stuff
set guioptions-=m    " disable gui stuff
set guioptions-=l    " disable gui stuff
set guioptions-=L    " disable gui stuff
set nobackup         " no useless backup files
set noswapfile       " no useless swap files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignore patterns for completion
set nohidden
set autochdir         " change directory to current file working dir
let g:rct_completion_use_fri = 1
set clipboard=unnamed " clipboard = unnamed reg for easy interaction
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
let mapleader=','
let g:molokai_original = 1
" }}}
