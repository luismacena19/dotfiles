call plug#begin()
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'chrisbra/csv.vim'

" Initialize plugin system
call plug#end()

" Necessary for CSV and so on
filetype plugin on
set fileencodings=utf-8
syntax enable

" Leader set to ,
let mapleader = ","

" Source init.vim
noremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Set number
set nu

" Disable highlight after search
noremap <Esc><Esc> :<C-u>nohlsearch<CR>

" Copy to clipboard
nnoremap <C-y> "+y
vnoremap <C-y> "+y

" Paste from clipboad
nnoremap <C-p> "+p
vnoremap <C-p> "+p

" Toggle NERDTree
map <F2> :NERDTreeToggle<CR>


