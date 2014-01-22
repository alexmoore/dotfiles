" Alex Moore .vimrc
" Organization based on http://dougblack.io/words/a-good-vimrc.html

""Colors

set gfn=Menlo\ Regular:h16  " make font bigger
colorscheme github          " like all the cool kids
set t_Co=256                " use 256 colors by default
syntax enable               " enable syntax processing
"set background=dark         " set dark background


""Spaces And Tabs

set tabstop=4               " number of visual spaces per Tab
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
"set smarttab
"set shiftwidth=4
set backspace=indent,eol,start  " allow backspacing over:
                                " autoindent, line breaks, 
                                " and start of inserts
"set autoindent                  " autoindent lines
"set copyindent                  " set indent to that of previous line
set shiftround                  " round alignment to nearest indent
                                " when shifting with < and >


""UI Config

set number                  " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
filetype plugin indent on   " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to
set showmatch               " highlight matching [{()}]
set nowrap                  " don't wrap lines
set hidden                  " hide unsaved buffers instead of forcing to save
set visualbell              " flash instead of beep
"set noerrorbells            " don't beep/flash 
set title                   " set screen title to filename


""Searching

set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set ignorecase              " case-insensitive search
set smartcase               " search for uppercase if entered in search


""Folding

set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
nnoremap <space> za         " space open/closes folds
set foldmethod=indent       " fold based on indent level

""Custom Movements


""Custom Leader

let mapleader=","           " leader is comma
inoremap jk <esc>           " jk is escape
set pastetoggle=<F2>

""CtrlP Settings


""Launch Config

set nocompatible            " default to vim
" use pathogen
execute pathogen#infect()   


""Tmux Config


""Autogroups

" - Experimental, trying these out
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md :call <SID>StripTrailingWhitespaces()
    autocmd FileType java set noexpandtab
    autocmd FileType java set list
    autocmd FileType java set list
    autocmd FileType java set listchars=tab:+\ ,eol:-
    autocmd FileType java set formatprg=par\ -w80\ -T4
    autocmd FileType php set noexpandtab
    autocmd FileType php set list
    autocmd FileType php set list
    autocmd FileType php set listchars=tab:+\ ,eol:-
    autocmd FileType php set formatprg=par\ -w80\ -T4
    autocmd FileType ruby set tabstop=2
    autocmd FileType ruby set shiftwidth=2
    autocmd FileType ruby set softtabstop=2
    autocmd FileType ruby set commentstring=#\ %s
    autocmd FileType python set commentstring=#\ %s
    autocmd BufEnter *.cls set filetype=java
    autocmd BufEnter *.zsh-theme set filetype=zsh
    autocmd BufEnter Makefile set noexpandtab
    autocmd BufEnter *.sh set tabstop=2
    autocmd BufEnter *.sh set shiftwidth=2
    autocmd BufEnter *.sh set softtabstop=2
augroup END


""Ignore Files
" ignore these patterns when completing dir/filenames
set wildignore=*.swp,*.bak,*.pyc,*.class,*.beam 


""Backups

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
 

""History Settings
set history=1000            " remember many many commands
set undolevels=1000         " undo many many mistakes


""Custom Functions

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

nnoremap <F10> :call ToggleMouse()<CR>
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
        echo "Mouse usage disabled"
    else
        set mouse=a
        echo "Mouse usage enabled"
    endif
endfunction

