" Initialize plugin system
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'Valloric/YouCompleteMe'
Plug 'vimwiki/vimwiki'
Plug 'haya14busa/incsearch.vim'
"Plug 'blindFS/vim-taskwarrior'
Plug 'mateusbraga/vim-spell-pt-br'
call plug#end()

filetype plugin indent on

""Algumas opçãos
syntax on
set relativenumber
set nu
set fileencodings=utf-8
set fileformats=unix,dos,mac
set splitbelow
set splitright
"set spell 
set spelllang=pt_br
set dictionary=~/.vim/dicionario_pt_br.txt
set display=lastline
set autoindent
set smartindent
"set textwidth=8
"Theming
"highlight ColorColumn ctermbg=darkgray
" colorscheme simplicity-darker
"set background=dark

"Indentação
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"Opções de segurança e execução dentro do Vim
set exrc
set secure

"Necessário para o Make
set makeprg=make\ -C\ ../build\ -j9
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"Comando para fechar as janelas do YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"Deixa o mouse sempre habilidado
set mouse=a
""Status bar
set laststatus=2
set statusline=
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%=
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c

""Atalhos
let mapleader = ","
"NerdTree
map <F2> :NERDTreeToggle<CR>
noremap <leader>m :exec &mouse!=""? "set mouse=" : "set mouse=nv" <cr> 
noremap <leader>% :vsplit
noremap <leader>" :split
noremap <leader>ev :vsplit ~/.vimrc<cr>
noremap <leader>sv :source ~/.vimrc<cr>
nnoremap <F4> :!gcc -o %< % && ./%< 
nnoremap <F5> :!clean && node % 
nnoremap <F6> :!touch 
nnoremap <leader>h :tabe ~/.vim/help.md
"Clipboard
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+p
vnoremap <C-p> "+p

nnoremap <leader>s :set spell!<cr>
"" Coisas do incsearch
" :h g:incsearch#auto_nohlsearch
noremap <Esc><Esc> :<C-u>nohlsearch<CR>
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
