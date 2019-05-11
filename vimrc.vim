set nocompatible					                            " Enbale the latest Vim setting/options.
set termguicolors					                            " Enable true colors support for Vim.
source ~/.vim/plugins.vim			                            " Iclude plugins for Vim.
syntax enable						                            " Enable syntax for code.
let mapleader=','					                            " Change default leader key for Vim.
set nonumber						                            " Disable(nonumber) or Enable(number) for Vim line numbers.
let ayucolor="light"				                            " Light theme for Ayu color scheme.
let ayucolor="mirage"				                            " Mirage theme for Ayu color scheme.
let ayucolor="dark"					                            " Dark theme for Ayu color scheme.
"colorscheme desert					                            " Set default theme for Vim.
colorscheme ayu						                            " Set default theme for gVim.
set linespace=2						                            " Set the line space for Vim if this support.
set guifont=Fira_Code:h12			                            " Set the default font family and font size for Vim.
set encoding=utf-8					                            " Set default charset.


"""""""""""""""""""""""""""""""""""
" Setting for seartching in Vim.
"""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch

"""""""""""""""""""""""""""""""""""
" Tab setting
"""""""""""""""""""""""""""""""""""
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set backspace=2

"""""""""""""""""""""""""""""""""""
" Key Mapping for Vim.
"""""""""""""""""""""""""""""""""""
nmap <Leader>vf :e ~/.vim<cr>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>egv :tabedit ~/.gvimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

map <F1> :NERDTreeToggle<cr>
map <F8> :tabprev<cr>
map <F9> :tabnext<cr>
map <leader><S> :CtrlP<cr>

nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l


"""""""""""""""""""""""""""""""""""
" Auto commands for Vim.
"""""""""""""""""""""""""""""""""""
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
	autocmd BufWritePost ~/.gvimrc source %
augroup END
