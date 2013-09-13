## Special Tipz & Powerz
This is how I deal with my editor setup. I keep all my configuration in 
a repo, which includes submodules. My vimrc is meant to be symlinked from my 
home directory, an obvious step which is naming the link with a dot.

## Included plugins
* Auto Pairs
* Blockify
* Bufferline
* CtrlP
* Dash
* EasyMotion
* Eunuch
* Floobits
* Fugitive
* Funcoo
* Indent Guides
* JSHint
* Move
* Nerd Tree
* Numbers
* Signify
* Surround
* Syntastic
* TagBar
* tComment
* UltiSnip
* Unimpaired
* YouCompleteMe
* Misc syntaxes and stuff

## Notes
* To update plugins --> git submodule foreach git pull origin master
* ./install.sh --clang-completer to install YouCompleteMe
* I'm using Powerline. Not the Vim one, but the hard one, checkout out 
  Airline.
* Install tern with npm
* Make sure you have node.js and npm installed (Tern is a JavaScript program), 
  and install the tern server by running npm install in the 
  bundle/tern_for_vim directory.

#### Drupal notes
* Check into https://drupal.org/node/1389448 to see drupalvim stuff
* Install drupalvim with Drush
* Install phpcs and set Drupal as default syntax

#### Todo
* Break configuration file up into smaller bits, so plugin configuration can 
  be isolated.
* E486: Pattern not found: 666 --> can't open splits
* tComment is doing it wrong for scss
* Using redundant scss plugins -- mebbe this is a bad idea
