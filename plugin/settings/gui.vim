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
