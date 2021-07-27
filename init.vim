call plug#begin(stdpath('data') . '/plugged')
" Colorscheme
Plug 'sainnhe/sonokai'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Language server stuff
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" Lightspeed
Plug 'ggandor/lightspeed.nvim'

" Comment out stuff
Plug 'tpope/vim-commentary'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

source ~/.config/nvim/plug-config/settings.vim
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/sonokai-config.vim
luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/plugins/lightspeed-config.lua

" REMAPS
source ~/.config/nvim/plug-config/remaps.vim
