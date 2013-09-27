"" I found this on the internet
""
"" http://bit.ly/178vQi9
"" http://bit.ly/1h8T3T3
"" http://bit.ly/198R1NE
"" http://bit.ly/15ZT2iF
"" --------------------------------------------------------------------------

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

"" General configuration ----------------------------------------------------
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
set timeoutlen=500

"" Initialize Vundle --------------------------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"" Turn Off Swap Files ------------------------------------------------------
set noswapfile
set nobackup
set nowb

"" Persistent Undo ----------------------------------------------------------
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"" Indentation & Space ------------------------------------------------------
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


" Something to do with Vundle ------------------------------------------------
filetype plugin indent on

" Display tabs and trailing spaces visually
set list
set list listchars=tab:\ \ ,trail:·
set list listchars+=extends:>
set list listchars+=precedes:<

" Rapping
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Text shit
set linespace=3
set textwidth=78
set colorcolumn=80
set formatoptions=qrn1
set formatoptions+=w

" Indentation
set smartindent
set autoindent

"" Searching ----------------------------------------------------------------
set incsearch
set hlsearch
set ignorecase
set smartcase
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
nmap <silent> ,/ :nohlsearch<CR>

"" Wildcards ----------------------------------------------------------------
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"" Completion ---------------------------------------------------------------
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"" Swap ---------------------------------------------------------------------
set nobackup
set nowritebackup
set noswapfile

"" Folds --------------------------------------------------------------------
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
"" shortcut to fold tags with leader (usually \) + ft
nnoremap <leader>ft Vatzf

"" TODO --------------------------------------------------------------------

"" hide mouse when typing
set mousehide

"" opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>l

"" split windows below the current window.
set splitbelow

"" session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

"" faster shortcut for commenting. Requires T-Comment plugin
map ,c <c-_><c-_>

"" map code completion to , + tab
imap ,<tab> <C-x><C-o>

"" map escape key to jj -- much faster
imap jk <esc>

"" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

"" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

"" window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"" highlight brackets
hi MatchParen cterm=bold ctermbg=darkmagenta ctermfg=white

"" yank text to the OS X clipboard
set clipboard=unnamed
noremap <leader>y "+y
noremap <leader>yy "+yy

"" preserve indentation while pasting text from the OS X clipboard
" noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"" Up/Down keys move by row, rather than line
nnoremap j gj
nnoremap k gk

"" Reload .vimrc after editing and saving
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"" SCSS YAW
au BufRead,BufNewFile *.scss set filetype=scss

