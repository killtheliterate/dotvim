"" I found this on the internet
"" http://xkcd.com/1172/
"" ---------------------------------------------------------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Plugins
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'henrik/vim-reveal-in-finder'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'mhinz/vim-blockify'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'mileszs/ack.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'

" Colors
Plugin 'altercation/vim-colors-solarized'

" Syntax
Plugin 'nono/vim-handlebars'
Plugin 'groenewege/vim-less'
Plugin 'beyondwords/vim-twig'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-liquid'

call vundle#end() 

"" basics
filetype plugin indent on
set number
syntax on
set encoding=utf-8
set mouse=a

"" things like whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set list
set autoindent
set linespace=3
set formatoptions=qrn1
set formatoptions+=w
set cursorline

" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

"" show where line ends
"" use gq to apply formatting
set textwidth=80
set colorcolumn=81

au BufRead,BufNewFile *.md setlocal formatoptions+=ct

"" who even wants swap files???
set noswapfile
set nobackup
set nowb

"" what mode is i am?
set showmode

"" display things like newlines, carriage returns, whitespace, etc...
set listchars=""
set listchars+=tab:▸\
" set listchars+=eol:¬
set listchars+=trail:.
" set listchars+=extends:>
" set listchars+=precedes:<

" ☠
" ❤

"" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <silent> ,/ :nohlsearch<CR>
hi Search    cterm=NONE ctermfg=white ctermbg=5

"" undo forever and ever
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"" wildcard settings
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"" set <leader> to ,
let mapleader = ","
set timeoutlen=500

"" enable code folding
set foldenable
set foldmethod=syntax
set foldlevelstart=99

"" hide mouse when typing
set mousehide

"" split windows below the current window.
set splitbelow
set splitright

"" session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

"" map escape key to jk -- much faster
" also, <C-c> and <C-[>
imap jk <esc>

"" window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"" highlight brackets
hi MatchParen cterm=bold ctermbg=darkmagenta ctermfg=white

"" yank text to the OS X clipboard
set clipboard=unnamed

"" preserve indentation while pasting text from the OS X clipboard
"" use ,p dummy
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"" kill all trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>

"" up/down keys move by row, rather than line
nnoremap j gj
nnoremap k gk

"" switch buffers without saving
set hidden

"" bubble single lines
nmap <C-k> [e
nmap <C-j> ]e

"" bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv

"" Reload .vimrc after editing and saving
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Leader Leader to switch between last 2 buffers
nnoremap <leader><leader> <c-^>

"" set scss files RIGHT
au BufRead,BufNewFile *.scss set filetype=scss

"" PLUGINS -------------------------------------------------------------------

" Airline, a powerline replacement
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'

"" Blockify
let g:blockify_pairs = {
      \ 'c':    [ '{', '}' ],
      \ 'cpp':  [ '{', '}' ],
      \ 'java': [ '{', '}' ],
      \ 'php': [ '{', '}' ],
      \ 'css': [ '{', '}' ],
      \ 'scss.css': [ '{', '}' ],
      \ 'scss': [ '{', '}' ],
      \ 'javascript': [ '{', '}' ],
      \ 'php.drupal': [ '{', '}' ],
      \}

"" JS enhanced syntax
au FileType javascript call JavaScriptFold()

"" Numbers
let g:numbers_exclude = ['nerdtree']

"" Syntastic
let g:syntastic_auto_jump=0
let g:syntastic_enable_signs=1

"" Colors and type------------------------------------------------------------
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline\ 13
colorscheme solarized
if has('gui_running')
  set go-=T
endif

" Reveal
map <leader>e :Reveal<cr>

"" Vimux
map <Leader>js :call VimuxRunCommand("clear; node " . bufname("%"))<CR>

"" Startify
let g:startify_custom_header = map(split(system('figlet -f isometric2 "DOOM"'), '\n'), '"   ". v:val') + ['','']
let g:startify_custom_footer = map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

