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

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/vimspector.vim
source ~/.config/nvim/ultisnip.vim

luafile ~/.config/nvim/lsp.lua
luafile ~/.config/nvim/tree-sitter.lua

let g:terraform_fmt_on_save=1


function! Formatonsave()
    execute "FormatCode"
endfunction


function! Formatonsavee()
  let l:formatdiff = 1
  pyf ~/clang-format.py
endfunction
"autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()


autocmd InsertEnter,InsertLeave * set cul!
autocmd BufWritePre *.h,*.cc,*.cpp,*.java call Formatonsave()
autocmd BufWritePre *.go :GoImports



"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()



