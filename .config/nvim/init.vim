set nocompatible

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

" Python develop
Plug 'zchee/deoplete-jedi'

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'

" Git integration
Plug 'tpope/vim-fugitive'

" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'

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

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Goto definition
nmap <silent> gd <Plug>(coc-definition)
" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

