set syntax=on " required for onedark theme         
set clipboard=unnamedplus                                                       
set noswapfile                                                                  
set nobackup                                                                    
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set noautoindent                                                               
set number                                                                      
set relativenumber                                                              
set colorcolumn=80                                                              
set cursorline                      
set nowrap
set path+=** " search in folder and subfolders
set wildmenu " display all matching files when we tab complete
set wildignore+=**/node_modules/** " ignore when searching
set wildignore+=**/.git/**
set hlsearch
set listchars=tab:→\ ,eol:↲
set foldmethod=indent
set foldlevel=9

call plug#begin('~/.vim/plugged')
" Plug 'vim-scripts/AutoComplPop'
" Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
" Plug 'preservim/nerdtree'
call plug#end()

" onedark theme
" https://github.com/tomislav/one-dark-terminal/blob/master/COLORS for my
" terminal theme
let g:onedark_termcolors=16
colorscheme onedark

let mapleader = ' '
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap f ]mzz
nnoremap b [mzz
nnoremap <leader>p :Lex<cr> " edit .  
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" file browser
let g:netrw_banner=0
let g:netrw_altv=1 " open split on the right
let g:netrw_liststyle=3 " tree view
 let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_winsize=30
" Git gutter

" AutoComplPop
" set complete+=kspell "ctrl p to invoke pop with spelling
" set completeopt=menuone,longest

autocmd FileType java setlocal expandtab ts=4 sts=4 sw=4

" perfectionist 
let g:projectionist_heuristics = {
    \   '*': {
    \       '*.js': {
    \           'alternate': '{dirname}/{basename}.test.js',
    \           'type': 'source'
    \       },
    \       '*.test.js': {
    \           'alternate': '{dirname}/{basename}.js',
    \           'type': 'test'
    \       }
    \   }
    \}

