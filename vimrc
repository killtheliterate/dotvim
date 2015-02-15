"" ❤ ☠ ⚒ ☞ ☛ ☚ ☜ » « ☹ → ← ⚔
"" http://xkcd.com/1172
"" ---------------------------------------------------------------------
filetype off

if !1 | finish | endif

if has('vim_starting')
  set nocompatible
  set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('$HOME/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'henrik/vim-reveal-in-finder'
NeoBundle 'janko-m/vim-test'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'justinmk/vim-matchparenalways'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'matze/vim-move'
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
NeoBundle 'godlygeek/tabular'

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
NeoBundle 'ap/vim-css-color' " only works in gvim
NeoBundle 'beyondwords/vim-twig'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'groenewege/vim-less'
NeoBundle 'idris-hackers/idris-vim'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'raichoo/haskell-vim'
NeoBundle 'raichoo/purescript-vim'
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

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
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

"" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <silent> <Space>c :nohlsearch<CR>
hi Search    cterm=NONE ctermfg=white ctermbg=5

"" undo forever and ever
let s:vim_cache = expand('$HOME/.vim/backups')
if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0777)
endif
set undodir=$HOME/.vim/backups
set undofile

"" wildcard settings
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"" set <leader> to ,
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

"" Numbers
let g:numbers_exclude = ['nerdtree']

"" Syntastic
let g:syntastic_auto_jump=0
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

"" Colors and type------------------------------------------------------------
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
colorscheme solarized
if has('gui_running')
  set go-=T
endif

" Reveal
map <silent> <leader>e :Reveal<cr>

"" Vim test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>

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
  let g:unite_source_grep_default_opts = '--ignore-case --nocolor --nogroup --hidden'
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
\ 'max_candidates', 20)

" File finder
" This is a POS - consider using file_rec/git
nnoremap <leader>a :<C-u>Unite -resume -buffer-name=files file_rec/async:!<CR><End><C-U>

" File searcher
nnoremap <leader>s :<C-u>Unite -buffer-name=search grep:.<CR><End><C-U>

" MRU
nnoremap <leader>d :<C-u>Unite -resume -buffer-name=recent file_mru<CR><End><C-U>

" Buffers
nnoremap <leader>f :<C-u>Unite -resume -buffer-name=buffers buffer<CR><End><C-U>

" Yanks searcher
nnoremap <leader>g :<C-u>Unite -resume -buffer-name=history history/yank<CR><End><C-U>

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

" Neocomplete
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


" NeoSnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:vim_markdown_frontmatter=1
