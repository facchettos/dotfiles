
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'hashivim/vim-terraform'

    use 'puremourning/vimspector'

    use { 'junegunn/fzf' ,  run= ":call fzf#install()" }
    use {'junegunn/fzf.vim'}

    use { 'fatih/vim-go',
        run= ':GoUpdateBinaries' }

    use 'tanvirtin/monokai.nvim'
    use 'sainnhe/sonokai'

    use {'hoob3rt/lualine.nvim' }
    use {'akinsho/nvim-bufferline.lua' }

    use 'kyazdani42/nvim-web-devicons'

    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    use 'honza/vim-snippets'
    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'

    use 'marko-cerovac/material.nvim'

    use 'hrsh7th/nvim-compe'

    use {'nvim-treesitter/nvim-treesitter', run= ':TSUpdate'}  

    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end 
    }

end)

