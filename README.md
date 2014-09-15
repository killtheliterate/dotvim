## Special Tipz & Powerz
This is how I deal with my editor setup. My vimrc is meant to be symlinked from my 
home directory, an obvious step of which is appending a dot to the symlink 
name. Plugin management is handled by [Vundle](https://github.com/gmarik/vundle).



## Included plugins
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

* [indentLine](http://github.com/Yggdroot/indentLine)
* [Ack](http://github.com/mileszs/ack.vim)
* [Airline](http://github.com/bling/vim-airline)
* [Auto Pairs](http://github.com/jiangmiao/auto-pairs)
* [Blockify](http://github.com/mhinz/vim-blockify)
* [Bufferline](http://github.com/bling/vim-bufferline)
* [Commentary](http://github.com/tpope/vim-commentary)
* [Ctrl-P](https://github.com/kien/ctrlp.vim)
* [Eunuch](http://github.com/tpope/vim-eunuch)
* [Fugitive](http://github.com/tpope/vim-fugitive)
* [Git](http://github.com/tpope/vim-git)
* [JS Context Coloring](https://github.com/bigfish/vim-js-context-coloring)
* [Move](http://github.com/matze/vim-move)
* [Numbers](http://github.com/myusuf3/numbers.vim)
* [Rainbow Parentheses](http://github.com/kien/rainbow_parentheses.vim)
* [Repeat](http://github.com/tpope/vim-repeat)
* [Reveal In Finder](https://github.com/henrik/vim-reveal-in-finder)
* [Sensible](http://github.com/tpope/vim-sensible)
* [Signify](http://github.com/mhinz/vim-signify)
* [Startify](https://github.com/mhinz/vim-startify)
* [Surround](http://github.com/tpope/vim-surround)
* [Syntastic](http://github.com/scrooloose/syntastic)
* [Unimpaired](http://github.com/tpope/vim-unimpaired)
* [Vimux](https://github.com/benmills/vimux)
* [Vinegar](http://github.com/tpope/vim-vinegar)
* [Vitality](http://github.com/sjl/vitality.vim)
* [tComment](http://github.com/tomtom/tcomment_vim)
* Misc syntaxes and stuff

## Notes
* To install the included plugins, run :PluginInstall
* To install JavaScript context coloring, run `npm install` from 
  /bundle/vim-js-context-coloring. This plugin is disabled by default, and 
  should instead have a hotkey set up to toggle betweet syntax and context 
  coloring.
* Set Iterm2 to report itself as xterm-256color.
