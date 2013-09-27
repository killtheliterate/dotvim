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

"Powerline 2
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

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

"" CTRL-P
let g:ctrlp_by_filename = 1

" JS enhanced syntax
au FileType javascript call JavaScriptFold()

" Numbers
let g:numbers_exclude = ['nerdtree']
