let g:airline#extensions#tabline#enabled = 1
let g:gitgutter_sign_allow_clobber = 1
filetype plugin indent on    " required
set hidden
 
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
set ignorecase
set smartcase
set relativenumber  
set backspace=indent,eol,start
 
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
""set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F10>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set rtp+=/usr/bin/fzf 
set softtabstop=4
set expandtab
set updatetime=200
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
set splitright
set splitbelow

" Avoid showing message extra message when using completion
set shortmess+=c

map Y y$
set signcolumn=auto:3
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
"map <f12> :let &background = ( &background == "dark"? "light" : "dark" )  <CR>
imap <C-Del> <C-o>diw
let g:go_code_completion_enabled = 0

if has('python3')
endif
set background=dark


" Terminal stuff
command Termv :vsplit | terminal
command Termh :split | terminal
tnoremap <Esc> <C-\><C-n>
nnoremap <C-c> :bp\|bd #<CR>
au TermOpen  * setlocal nonumber | startinsert

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


cnoreabbrev W w

colorscheme sonokai
