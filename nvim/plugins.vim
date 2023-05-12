
call plug#begin('~/.config/nvim/plugged')
Plug 'hashivim/vim-terraform'

Plug 'puremourning/vimspector'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'fatih/molokai'
Plug 'tanvirtin/monokai.nvim'
Plug 'sainnhe/sonokai'

Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovim/nvim-lspconfig'
"Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
"Plug 'nvim-lua/completion-nvim'

Plug 'marko-cerovac/material.nvim'

Plug 'hrsh7th/nvim-compe'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()


