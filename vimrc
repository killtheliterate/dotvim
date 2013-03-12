" Pathogen
execute pathogen#infect()

" Fuck everything
set encoding=utf-8

" no compatability with vi
set nocompatible

" enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

" write old data out
set autowrite

" display cursor position in status line
set ruler

" use a different <leader>
let mapleader = ","

" reduces lag when using <leader>
set timeoutlen=500


" set tab length and type
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" show commands in status line
set showcmd

" show lines numbers
set number

" indent stuff
set smartindent
set autoindent

" always show the status line
set laststatus=2

" line-height
set linespace=3

" better line wrapping
set wrap
set linebreak
set textwidth=79
set formatoptions=qrn1

" backspace, whatever
set backspace=indent,eol,start

" set incremental searching
set incsearch

" highlight searching
set hlsearch

" At least let yourself know what mode you're in
set showmode

" case insensitive search
set ignorecase
set smartcase

" hide MacVim toolbar by default
set go-=T

" hard-wrap paragraphs of text
nnoremap <leader>q gqip

" enable code folding
set foldenable

" hide mouse when typing
set mousehide

" shortcut to fold tags with leader (usually \) + ft
nnoremap <leader>ft Vatzf

" opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>l

" split windows below the current window.
set splitbelow

" session settings
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

" map a change directory to the desktop - Mac specific
nmap ,d :cd ~/Desktop<cr>:e.<cr>

" change zen coding plugin expansion key to shift + e
let g:user_zen_expandabbr_key = '<C-e>'

" faster shortcut for commenting. Requires T-Comment plugin
map ,c <c-_><c-_>

" saves time; maps the spacebar to colon
nmap <space> :

" map code completion to , + tab
imap ,<tab> <C-x><C-o>

" more useful command-line completion
" set wildmenu

" auto-completion menu
" set wildmode=list:longest

" map escape key to jj -- much faster
imap jj <esc>

" delete all buffers (via Derek Wyatt)
nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<cr>

" bubble single lines (kicks butt)
" http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp

" bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" source the vimrc file after saving it.
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle
" shortcut for NERTTreeTabsToggle
nmap ,ntt :NERDTreeTabsToggle

" show hidden files in NerdTree
let NERDTreeShowHidden=1

" for autocompletion of Snipmate plugin
let g:acp_behaviorSnipmateLength = 1

" snipmate
:filetype plugin on

" scrollbar junk
set guioptions=aAce

" colors and fonts
syntax enable
let g:solarized_termtrans = 1
colorscheme solarized
set guifont=Inconsolata\ for\ Powerline:h14
if has('gui_running')
  autocmd VimEnter * NERDTree
  autocmd vimenter * wincmd p
else
    set mouse=a
endif

" yank text to the OS X clipboard
set clipboard=unnamed
noremap <leader>y "+y
noremap <leader>yy "+yy

" preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" a fancy status bar
let g:Powerline_symbols = 'fancy'

" Syntastic + DrupalCS
let g:syntastic_phpcs_conf=" --standard=Drupal --extensions=php,module,inc,install,test,profile,theme"

" Drupal line length
set colorcolumn=80

" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 5
let g:indent_guides_space_guides = 1
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

" spellcheck
map <leader>ss :setlocal spell!<cr>

" shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" search stuff
nmap <silent> ,/ :nohlsearch<CR>

" enable this if up and down should go to the next row, instead of the next
" line
nnoremap j gj
nnoremap k gk

" kill all the swap files, please god
" set directory = ~/.vimswap
set nobackup
set nowritebackup
set noswapfile

" switch buffers without saving
set hidden

" YankRing
let g:yankring_history_dir = '$HOME/Dropbox/backups'
let g:yankring_history_file = 'yankring_history'

" GitGutter
highlight clear SignColumn
nmap ]h :GitGutterNextHunk<CR>
nmap [h :GitGutterPrevHunk<CR>

" CtrlP
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" OH MY FUCKING GAWD. start ctrlp with caps-lock t, aka command t
