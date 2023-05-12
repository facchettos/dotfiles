set nocompatible
set number  
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for Plugs that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
set nocompatible              " be iMproved, required
nnoremap <Leader>F :FZF<CR>
nnoremap <Leader>f :Rg<CR>
filetype off                  " required
autocmd Filetype go setlocal tabstop=4
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead Jenkinsfile setf groovy

"source ~/.config/nvim/plugins.vim
luafile ~/.config/nvim/packer.lua
source ~/.config/nvim/ui.vim
luafile ~/.config/nvim/ui.lua
source ~/.config/nvim/vimspector.vim
source ~/.config/nvim/ultisnip.vim

luafile ~/.config/nvim/lsp.lua
luafile ~/.config/nvim/tree-sitter.lua

let g:terraform_fmt_on_save=1

autocmd InsertEnter,InsertLeave * set cul!
autocmd BufWritePre *.go :GoImports
autocmd BufWritePre *.cc,*.c,*.cpp,*.h,*.rs,*.rb,*.json,*.yaml lua vim.lsp.buf.formatting()
let g:firenvim_config={'globalSettings':{},'localSettings':{'.*':{ 'takeover': 'never' }}}
