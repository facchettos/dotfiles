
call plug#begin('~/.config/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
"Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'hashivim/vim-terraform'

Plug 'puremourning/vimspector'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'whzup/greent.vim'
Plug 'fatih/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'liuchengxu/space-vim-theme'
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rodjek/vim-puppet'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

call plug#end()
