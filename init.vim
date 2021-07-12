" Automatic Plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install eslint https://www.npmjs.com/package/eslint
" Install python-lsp-server with yapf https://github.com/python-lsp/python-lsp-server

" Plugin stuff
call plug#begin(stdpath('data') . '/plugged')

" Colorscheme plugins
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Language server stuff
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'L3MON4D3/LuaSnip'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

source ~/.config/nvim/plug-config/settings.vim
" source ~/.config/nvim/plug-config/tokyonight-config.vim
source ~/.config/nvim/plug-config/nord-config.vim
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/lua/plugins/treesitter-config.lua
luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/plugins/lsp-config.lua

" REMAPS
source ~/.config/nvim/plug-config/remaps.vim
