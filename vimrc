"" I found this on the internet
"" http://net.tutsplus.com/articles/general/top-10-pitfalls-when-switching-to-vim/
"" https://github.com/carlhuda/janus
"" http://xkcd.com/1172/
"" Todo:
"" Break apart vimrc into distinct pieces.
"" ALSO SET Iterm2 to report itself as xterm-256color
"" ---------------------------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Plugins
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-commentary'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'jeetsukumaran/vim-markology'
" Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/neosnippet.vim'
" Bundle 'Shougo/neosnippet-snippets.vim'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'gcmt/breeze.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'jpalardy/vim-slime'
Bundle 'kien/ctrlp.vim.git'
Bundle 'majutsushi/tagbar'
Bundle 'marijnh/tern_for_vim'
Bundle 'mattn/emmet-vim'
Bundle 'matze/vim-move'
Bundle 'mhinz/vim-blockify'
Bundle 'mhinz/vim-signify'
Bundle 'mileszs/ack.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 't9md/vim-choosewin'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/vitality.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vinegar'

" Misc
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'rizzatti/funcoo.vim'

" Colors
Bundle 'altercation/vim-colors-solarized'

" Syntax
Bundle 'nono/vim-handlebars'
Bundle 'groenewege/vim-less'
Bundle 'beyondwords/vim-twig'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-haml'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-liquid'

"" Basic Setup
set nocompatible
set number
syntax on
filetype plugin indent on
set encoding=utf-8

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set list
set smartindent
set autoindent
set linespace=3
set textwidth=80
set formatoptions=qrn1
set formatoptions+=w

"" line length
set colorcolumn=80

"" Turn Off Swap Files ------------------------------------------------------
set backupdir^=~/Dropbox/backups/vim-backups/_backup//    " where to put backup files.
set directory^=~/Dropbox/backups/vim-backups/_temp//      " where to put swap files.
set noswapfile
set nobackup
set nowb

"" at least let yourself know what mode you're in
set showmode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
"" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
nmap <silent> ,/ :nohlsearch<CR>

"" Persistent Undo ----------------------------------------------------------
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" TODO: This is causing the shell to behave weirdly after exiting vim.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"" Wildcard settings
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"" <leader>
let mapleader = ","
set timeoutlen=500

"" enable code folding
set foldenable        " enable folds
set foldmethod=syntax " fold method
set foldlevelstart=99 " start with folds closed

"" hide mouse when typing
set mousehide

"" split windows below the current window.
set splitbelow

"" session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

"" faster shortcut for commenting. Requires T-Comment plugin
" map ,c <c-_><c-_>

"" map code completion to , + tab
imap ,<tab> <C-x><C-o>

"" map escape key to jk -- much faster
"" also, CTRL-C and CTRL-[]
imap jk <esc>

"" set text wrapping toggles
" nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

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
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"" spellcheck
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"" Up/Down keys move by row, rather than line
nnoremap j gj
nnoremap k gk

"" switch buffers without saving
set hidden

"" Unimpaired
nmap <space>n ]b
nmap <space>p [b

" Remapping unimpaired bubbling to textmate like bubbling
" Bubble single lines
nmap <C-k> [e
nmap <C-j> ]e

" Bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv

"" Indent Guides
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_color_change_percent = 5
let g:indent_guides_space_guides = 1
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

"" Nerd Tree
nmap ,nt :NERDTreeToggle
nmap ,ntt :NERDTreeTabsToggle
let NERDTreeShowHidden=1

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

"" Reload .vimrc after editing and saving
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

au BufRead,BufNewFile *.scss set filetype=scss

" JS enhanced syntax
au FileType javascript call JavaScriptFold()

" Numbers
let g:numbers_exclude = ['nerdtree']

" Leader Leader to switch between last 2 buffers
nnoremap <leader><leader> <c-^>

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_javascript_checkers = ['jshint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

" Slime
let g:slime_target = "tmux"

hi Search    cterm=NONE ctermfg=white ctermbg=5

" Automatically wrap at 80 characters for Markdown
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

colorscheme solarized
let g:solarized_termtrans = 1
set guifont=Inconsolata\ for\ Powerline:h14
if has('gui_running')
  set go-=T
  if has("autocmd")
    autocmd VimEnter * wincmd p
  endif
else
  set mouse=a
endif

set nobackup " write is sloooooooooo

