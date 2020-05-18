set nocompatible

syntax on

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

Plug 'ycm-core/YouCompleteMe'
Plug 'vim-utils/vim-man'
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme gruvbox
set background=dark

set nu
set tabstop=4 softtabstop=4
set expandtab
set shiftwidth=4
set nowrap
set noerrorbells
set vb t_vb=
set autochdir
set signcolumn=yes

filetype indent on

set wildmenu
set showmatch
set incsearch
set hlsearch
set hidden

set undodir=~\AppData\Local\nvim\undodir
set undofile

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" YCM Settings
let g:ycm_max_diagnostics_to_display=0
let g:ycm_autoclose_preview_window_after_insertion=1

nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <buffer> <silent> <leader>gf :YcmCompleter FixIt<CR>
nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<CR>

let mapleader=' '

inoremap jk <esc>

nnoremap <leader>, :nohlsearch<CR>

" Save shortcut
map <silent> <leader>w :w!<CR>

" Window movement mapping
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

nmap <leader><leader> V
vmap jk <esc> 

map <silent> <C-o> :NERDTreeToggle<CR>
