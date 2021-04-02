set runtimepath+=,~/prj/vim/jevelop
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'joshdick/onedark.vim'

" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mhinz/vim-startify'
Plug 'itchyny/vim-gitbranch'    
" On-demand lazy load
" Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

Plug 'vim-airline/vim-airline'
"Plug 'Users/wim/prj/vim/jevelop'
Plug 'file://'.expand('/Users/wim/prj/vim/jevelop')
Plug 'tpope/vim-projectionist'
call plug#end() 
