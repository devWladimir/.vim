"---------------------------------------
" VimPlug settings and installed plugins
"---------------------------------------
call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'ayu-theme/ayu-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'ctrlpvim/ctrlp.vim'
    Plug 'stanangeloff/php.vim'
    Plug 'arnaud-lb/vim-php-namespace'
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'honza/vim-snippets'
    Plug 'ervandew/supertab'
    Plug 'tobyS/pdv'
    Plug 'tobyS/vmustache'
    Plug 'SirVer/ultisnips'
call plug#end()
