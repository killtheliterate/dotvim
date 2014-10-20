"" I found this on the internet
"" http://xkcd.com/1172/
"" ---------------------------------------------------------------------
filetype off

if !1 | finish | endif

if has('vim_starting')
  set nocompatible
  set runtimepath+=/Users/gdawson/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/Users/gdawson/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
" NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'henrik/vim-reveal-in-finder'
NeoBundle 'jiangmiao/auto-pairs'
" NeoBundle 'kana/vim-arpeggio'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'matze/vim-move'
NeoBundle 'justinmk/vim-matchparenalways'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'

" Uh, more plugins
NeoBundle 'bigfish/vim-js-context-coloring', {
\ 'build' : {
\   'mac' : 'npm install',
\   'unix' : 'npm install',
\  },
\}

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\   'mac' : 'make -f make_mac.mak',
\   'unix' : 'make -f make_unix.mak',
\  },
\}

" Colors
NeoBundle 'altercation/vim-colors-solarized'

" Syntax
NeoBundle 'beyondwords/vim-twig'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'groenewege/vim-less'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-liquid'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

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
set formatoptions=qrn1
set formatoptions+=w
set cursorline

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
set listchars+=tab:\┆\ 
" set listchars+=eol:¬
set listchars+=trail:.
set listchars+=extends:→
set listchars+=precedes:←

" ❤ ☠ ⚒ ☞ ☛ ☚ ☜ » « ☹ → ← ⚔
"" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <silent> <Space>c :nohlsearch<CR>
hi Search    cterm=NONE ctermfg=white ctermbg=5

"" undo forever and ever
silent !mkdir -p $HOME/.vim/backups > /dev/null 2>&1
set undodir=$HOME/.vim/backups
set undofile
" let s:vim_cache = expand('$HOME/.vim/backups')
" if filewritable(s:vim_cache) == 0 && exists("*mkdir")
"     call mkdir(s:vim_cache, "p", 0777)
" endif

"" wildcard settings
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"" set <leader> to ,
" let mapleader = ","
let mapleader = "\<Space>"
set timeoutlen=500

set nofoldenable
"" enable code folding
" set foldenable
" set foldmethod=syntax
" set foldlevelstart=99

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
" nmap <leader>h <C-w>h
" nmap <leader>j <C-w>j
" nmap <leader>k <C-w>k
" nmap <leader>l <C-w>l
" nmap <C-a>h <C-w>h
" nmap <C-a>j <C-w>j
" nmap <C-a>l <C-w>l
" nmap <C-a>k <C-w>k

" let g:tmux_navigator_no_mappings = 1
" nnoremap <silent> <C-a>h :TmuxNavigateLeft<cr>
" nnoremap <silent> <C-a>j :TmuxNavigateDown<cr>
" nnoremap <silent> <C-a>k :TmuxNavigateUp<cr>
" nnoremap <silent> <C-a>l :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

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
" nmap <leader>k [e
" nmap <leader>j ]e
nmap <C-k> [e
nmap <C-j> ]e

"" bubble multiple lines
" vmap <leader>k [egv
" vmap <leader>j ]egv
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

"" Numbers
let g:numbers_exclude = ['nerdtree']

"" Syntastic
let g:syntastic_auto_jump=0
let g:syntastic_enable_signs=1

"" Colors and type------------------------------------------------------------
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
colorscheme solarized
if has('gui_running')
  set go-=T
endif

" Reveal
map <silent> <leader>e :Reveal<cr>

"" Vimux
map <silent> <Leader>js :call VimuxRunCommand("clear; node " . bufname("%"))<CR>

"" Startify
let g:startify_custom_header = map(split(system('figlet -f isometric2 "DOOM"'), '\n'), '"   ". v:val') + ['','']
let g:startify_custom_footer = map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

"" JS enhanced syntax
au FileType javascript call JavaScriptFold()

"" Rainbow Parens
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
\ [ '13', '#6c71c4'],
\ [ '5',  '#d33682'],
\ [ '1',  '#dc322f'],
\ [ '9',  '#cb4b16'],
\ [ '3',  '#b58900'],
\ [ '2',  '#859900'],
\ [ '6',  '#2aa198'],
\ [ '4',  '#268bd2'],
\]

"" Context coloring
" Context coloring is disabled by default, so toggle it on with :JSContextColorToggle
let g:js_context_colors_show_error_message = 1
let g:js_context_colors_insertmode = 0
let g:js_context_colors_enabled = 0

"" indentLine
" ┆ ¦ │ ︙
let g:indentLine_char="┆"

" Unite
let g:unite_cursor_line_highlight = 'CursorLine'
let g:unite_enable_short_source_names = 1
let g:unite_enable_start_insert = 1
let g:unite_prompt = '❤ '
let g:unite_source_file_mru_filename_format = ':~:.'
let g:unite_source_file_mru_limit = 100
let g:unite_source_file_mru_time_format = ''
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files=5000
let g:unite_source_session_enable_auto_save = 1
let g:unite_update_time = 300

" make search faster
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
  let g:unite_source_grep_command='ack'
  let g:unite_source_grep_default_opts='--no-heading --no-color -a'
  let g:unite_source_grep_recursive_opt=''
endif

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" ignore stuff when using the following filters
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep,file_rec/git',
\ 'ignore_pattern', join([
\ '\.git/',
\ 'git5/.*/review/',
\ 'google/obj/',
\ 'tmp/',
\ '.sass-cache',
\ 'node_modules/',
\ 'bower_components/',
\ 'dist/',
\ '.git5_specs/',
\ '.pyc',
\ ], '\|'))

" limit matches
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
\ 'max_candidates', 10)

" File finder
" This is a POS - consider using file_rec/git
nnoremap <leader>f :<C-u>Unite -resume -buffer-name=files file_rec/async:!<CR><End><C-U>

" MRU
nnoremap <leader>r :<C-u>Unite -resume -buffer-name=recent file_mru<CR><End><C-U>

" Buffers
nnoremap <leader>b :<C-u>Unite -resume -buffer-name=buffers buffer<CR><End><C-U>

" File searcher
nnoremap <leader>s :<C-u>Unite -resume -buffer-name=search grep:.<CR><End><C-U>

" Yanks searcher
nnoremap <leader>y :<C-u>Unite -resume -buffer-name=history history/yank<CR><End><C-U>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Exit unite by doing two things at once!
  nmap <buffer> <C-c> <Plug>(unite_exit)
  imap <buffer> <C-c> <Plug>(unite_exit)

  " Cycle through sources by doing two things at once!
  nmap <buffer> <C-f> <Plug>(unite_rotate_next_source)

  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <c-j> <Plug>(unite_insert_leave)
  imap <buffer> <c-k> <Plug>(unite_insert_leave)
  nmap <buffer> <c-j> <Plug>(unite_loop_cursor_down)
  nmap <buffer> <c-k> <Plug>(unite_loop_cursor_up)

endfunction
