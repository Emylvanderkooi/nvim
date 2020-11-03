syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set termguicolors
set noshowmode
set colorcolumn=127

let g:rooter_targets = '/,*.yml,*.yaml'
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filename', 'gitbranch', 'readonly', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
let g:deoplete#enable_at_startup = 1

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin(stdpath('data') . '/plugged')

Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'davidhalter/jedi-vim'"
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme tokyonight

source $HOME/.config/nvim/plug-config/coc.vim

let mapleader = " "

let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"

nnoremap <Space> <NOP>
nnoremap <Leader>pf :Files<CR>

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
