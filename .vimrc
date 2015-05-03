""""""""""""""""""""""""
" Vundle ini
""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

 "set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Bundle 'gmarik/Vundle.vim'
 Bundle 'Valloric/YouCompleteMe'                             
 " YouCompleteMe plug 
 " https://github.com/Valloric/YouCompleteMe
 "Plugin 'https://github.com/tpope/vim-fugintive'
 " vim wrapper wit da git
 "Bundle 'Syntastic'	" redundant with YCM
 " Syntax highlighter
 Bundle 'altercation/vim-colors-solarized'
 " Trying out solarized

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
 " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Avoid a name conflict with L9
 " Plugin 'user/L9', {'name': 'newL9'}

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList     "  - lists configured plugins
 " :PluginInstall 
  " - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch  "foo - searches for foo; append `!` to refresh local cache
 " :PluginClean   "   - confirms removal of unused plugins; append `!` to
 "auto -approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

"""""""""""""""""""""
" END Vundle ini
"""""""""""""""""""""
"""""""""""""""""""""
" Evil Scheming Hobbits
"""""""""""""""""""""
syntax enable
"set background=light
"set background=dark
"colorscheme solarized
"colorscheme dessert

"""""""""""""""""""""
" END Evil Scheming
"""""""""""""""""""""

" Tabstops at 4, not 8 thanks
set number
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" When uncommented, this will keep the working dir clean by storing all swaps elsewhere.
" Still asks to recover from swp if left open.
" set backupdir=~/.vim/backup/
" set directory=~/.vim/swap/

""""""""""""""""""""
" CScope enable
""""""""""""""""""""
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

""""""""""""""""""""
" END CScope
""""""""""""""""""""

