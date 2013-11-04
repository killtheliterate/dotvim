## Special Tipz & Powerz
This is how I deal with my editor setup. I keep all my configuration in 
a repo, which includes submodules. My vimrc is meant to be symlinked from my 
home directory, an obvious step which is naming the link with a dot.

## Included plugins
Plugin management is handled by Vundle:
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
Start vim, and :BundleInstall

* [Ack](http://github.com/mileszs/ack.vim)
* [Airline](http://github.com/bling/vim-airline)
* [Auto Pairs](http://github.com/jiangmiao/auto-pairs)
* [Blockify](http://github.com/mhinz/vim-blockify)
* [Breeze](http://github.com/gcmt/breeze.vim)
* [Bufferline](http://github.com/bling/vim-bufferline)
* [CtrlP](http://github.com/kien/ctrlp.vim.git)
* [EasyMotion](http://github.com/Lokaltog/vim-easymotion)
* [Eunuch](http://github.com/tpope/vim-eunuch)
* [Fugitive](http://github.com/tpope/vim-fugitive)
* [Git](http://github.com/tpope/vim-git)
* [Indent Guides](http://github.com/nathanaelkane/vim-indent-guides)
* [JSHint](http://github.com/walm/jshint.vim)
* [Move](http://github.com/matze/vim-move)
* [Nerd Tree](http://github.com/scrooloose/nerdtree)
* [Numbers](http://github.com/myusuf3/numbers.vim)
* [Signify](http://github.com/mhinz/vim-signify)
* [Surround](http://github.com/tpope/vim-surround)
* [Syntastic](http://github.com/scrooloose/syntastic)
* [TagBar](http://github.com/majutsushi/tagbar)
* [tComment](http://github.com/tomtom/tcomment_vim)
* [Tern](http://github.com/marijnh/tern_for_vim)
* [UltiSnip](http://github.com/SirVer/ultisnips)
* [Unimpaired](http://github.com/tpope/vim-unimpaired)
* [Vitality](http://github.com/sjl/vitality.vim)
* [YouCompleteMe](http://github.com/Valloric/YouCompleteMe)
* Misc syntaxes and stuff

## Notes
* To install the included plugins, run :BundleInstall
* ./install.sh --clang-completer to install YouCompleteMe
* Make sure you have node.js and npm installed (Tern is a JavaScript program), 
  and install the tern server by running npm install in the 
  bundle/tern_for_vim directory.

#### Drupal Notes
* Check into https://drupal.org/node/1389448 to see drupalvim stuff
* Install drupalvim with Drush
* Install phpcs and set Drupal as default syntax
