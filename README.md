create symlinks
ln -s ~/.dotfiles/nvim/* ~/.config/nvim

# homebrew
create Brewfile
$ brew bundle dump --describe
to install > brew bundle --file ~/.dotfiles/Brewfile or cd ~/.dotfiles && brew bundle
