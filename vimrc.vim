set nocompatible					                            " Enbale the latest Vim setting/options.
set termguicolors					                            " Enable true colors support for Vim.
source ~/.vim/plugins.vim			                            " Iclude plugins for Vim.
syntax enable						                            " Enable syntax for code.
let mapleader=','					                            " Change default leader key for Vim.
set nonumber						                            " Disable(nonumber) or Enable(number) for Vim line numbers.
"let ayucolor="light"				                            " Light theme for Ayu color scheme.
let ayucolor="mirage"				                            " Mirage theme for Ayu color scheme.
"let ayucolor="dark"					                        " Dark theme for Ayu color scheme.
"colorscheme desert					                            " Set default theme for Vim.
colorscheme ayu						                            " Set default theme for gVim.
let g:airline_theme='base16_mocha'                              " Set default colorscheme for VimAirline.
set linespace=0						                            " Set the line space for Vim if this support.
set guifont=Fira_Code:h12			                            " Set the default font family and font size for Vim.
set encoding=utf-8					                            " Set default charset.
set foldcolumn=2                                                " Set left margin.
set noerrorbells visualbell t_vb=                               " No bells!
set autowriteall                                                " Auto writing the file after swithing on buffer.

"""""""""""""""""""""""""""""""""""
" Some settings for guiOptions
"""""""""""""""""""""""""""""""""""
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi TabLine guibg=bg
hi TabLineSel guibg=bg
hi TabLineFill guibg=bg
hi LineNr guibg=bg
hi foldcolumn guibg=bg

"""""""""""""""""""""""""""""""""""
" Setting for seartching in Vim
"""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch

"""""""""""""""""""""""""""""""""""
" Tab setting
"""""""""""""""""""""""""""""""""""
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2

"""""""""""""""""""""""""""""""""""
" Key Mapping for Vim
"""""""""""""""""""""""""""""""""""
nmap <Leader>vf :NERDTree ~/.vim<cr>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>egv :tabedit ~/.gvimrc<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-p> :CtrlP<cr>

map <F1> :NERDTreeToggle<cr>
map <F8> :tabprev<cr>
map <F9> :tabnext<cr>

imap ˙ <Left>
imap ∆ <Down>
imap ˚ <Up>
imap ¬ <Right>

nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""
" Setting for installed plugins
"""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore='node_module\vendor\DS_Store\|git'

" NEERDTree pugin config
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1

" PHP auto namespaces
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['∆', '<c-n>'],
    \ 'PrtSelectMove("k")':   ['˚', '<c-p>'],
    \ 'PrtHistory(-1)':       ['<down>'],
    \ 'PrtHistory(1)':        ['<up>'],
    \ }

" PVD
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leade>d :call pdv#DocumentWithSnip()<CR>

"""""""""""""""""""""""""""""""""""
" Project directories
"""""""""""""""""""""""""""""""""""
nmap <Leader>as :NERDTree ~/Code/appliancehuboc/<cr>
nmap <Leader>ai :NERDTree ~/Code/importer-appliance/<cr>

"""""""""""""""""""""""""""""""""""
" Auto commands for Vim
"""""""""""""""""""""""""""""""""""
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
	autocmd BufWritePost ~/.gvimrc source %
augroup END
