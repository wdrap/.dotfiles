source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/onedark.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/which-key.vim
source $HOME/.config/nvim/startify-screen.vim
source $HOME/.config/nvim/projectionist.vim
source $HOME/.config/nvim/fzf.vim

function Do() 
  ":h filename-modifiers
  if @% =~ "Test.java$"
    let to = expand('%:p:.:r:s?test?main?')[0:-5].".java" 
  else 
    let to = expand('%:p:.:r:s?main?test?')."Test.java"
  endif
  "let testFile = expand('%:p:.:r:s?main?test?')."Test.java"
  execute "e ".to
endfunction

nnoremap <leader>gt :call Do()<cr>

nnoremap <Leader>r <Esc>:!./mvnw spring-boot:run<CR>

if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost */init.vim source % | echom "init.vim sourced!" | redraw
 augroup END
endif " has autocmd
