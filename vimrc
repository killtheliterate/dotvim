"" I found this on the internet
"" http://net.tutsplus.com/articles/general/top-10-pitfalls-when-switching-to-vim/
"" https://github.com/carlhuda/janus
"" http://xkcd.com/1172/
"" Todo: 
"" Break apart vimrc into distinct pieces.
"" ---------------------------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Plugins
" Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'jiangmiao/auto-pairs'
Bundle 'mhinz/vim-blockify'
Bundle 'gcmt/breeze.vim'
Bundle 'bling/vim-bufferline'
" Bundle 'kien/ctrlp.vim.git'
" Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'walm/jshint.vim'
" Bundle 'matze/vim-move'
Bundle 'scrooloose/nerdtree'
Bundle 'myusuf3/numbers.vim'
Bundle 'mhinz/vim-signify'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'marijnh/tern_for_vim'
" Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-unimpaired'
Bundle 'sjl/vitality.vim'
" Bundle 'Valloric/YouCompleteMe'

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
" Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-haml'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-liquid'

"" Basic Setup
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax on             " Turn on syntax highlighting allowing local overrides
filetype plugin indent on
set encoding=utf-8    " Set default encoding to UTF-8

"" Whitespace
set wrap
" set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces

"" Turn Off Swap Files ------------------------------------------------------
set backupdir^=~/Dropbox/backups/vim-backups/_backup//    " where to put backup files.
set directory^=~/Dropbox/backups/vim-backups/_temp//      " where to put swap files.
set noswapfile
set nobackup
set nowb

"" Persistent Undo ----------------------------------------------------------
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" TODO: This is causing the shell to behave weirdly after exiting vim.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

"" Indentation & Space ------------------------------------------------------
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

set linespace=3
set textwidth=78
set formatoptions=qrn1
set formatoptions+=w

"" Indentation
set smartindent
set autoindent

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

"" Wildcard settings
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"" <leader>
let mapleader = ","
set timeoutlen=500

"" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

"" GUI
set t_Co=256
let g:solarized_termtrans = 1
colorscheme solarized
set guifont=Inconsolata\ for\ Powerline:h14
set guioptions=aAce
if has('gui_running')
  set go-=T
  if has("autocmd")
    autocmd VimEnter * NERDTree
    autocmd Vimenter * wincmd p
  endif
else
  set mouse=a
endif

" Toggle background color
" This is being weird
" call togglebg#map("<F5>")

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

"" at least let yourself know what mode you're in
set showmode

"" hard-wrap paragraphs of text
nnoremap <leader>q gqip

"" enable code folding
" set foldenable
set foldmethod=indent
set foldlevelstart=99
set nofoldenable

"" hide mouse when typing
set mousehide

"" shortcut to fold tags with leader (usually \) + ft
nnoremap <leader>ft Vatzf

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
" noremap <leader>y "+y
" noremap <leader>yy "+yy

"" preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"" line length
set colorcolumn=80

"" spellcheck
map <leader>ss :setlocal spell!<cr>

"" shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"" Up/Down keys move by row, rather than line
nnoremap j gj
nnoremap k gk

"" switch buffers without saving
"set hidden

"" Unimpaired
nmap <space>n ]b
nmap <space>p [b
" nnoremap <C-Space> ]b

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

"Powerline 2
" set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

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

"" Sup CTRL-P
" let g:ctrlp_by_filename = 1

" JS enhanced syntax
" au FileType javascript call JavaScriptFold()

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


" Remapping unimpaired bubbling to textmate like bubbling
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
