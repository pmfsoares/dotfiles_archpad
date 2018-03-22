#!/bin/bash
clear

arg="$1"
repo="$HOME/Projects/dotfiles_archpad/"
case $arg in
  -c| --catconfigs)
    cat $HOME/cat_configs.sh > $repo/cat_configs.sh
    printf "The file has been copied to the repo"
    ;;
  -h| --help)
    printf "\nDescription"
    printf "\nBash script that copies the selected type of config file to the dotfiles repo."
    printf "\n\nUsage:"
    printf "\n\t -h, --help \n\t\tShows this menu."
    printf "\n\t -i, --i3wm \n\t\tCopies the i3 config file."
    printf "\n\t -n, --neovim \n\t\tCopies the neovim config file."
    printf "\n\t -p, --polybar \n\t\tCopies the polybar config file."
    printf "\n\t -x, --xresources \n\t\tCopies the Xresources file."
    printf "\n\t -z, --zshrc \n\t\tCopies the zshrc file."
    ;;
  -i| --i3wm)
    cat $HOME/.config/i3/config > $repo/i3/config
    printf "The file has been copied to the repo"
    ;;
  -n| --nvim)
    cat $HOME/.config/nvim/init.vim > $repo/nvim/init.vim
    printf "The file has been copied to the repo"
    ;;
  -p| --polybar)
    cat $HOME/.config/polybar/config > $repo/polybar/config
    printf "The file has been copied to the repo"
    ;;
  -x| --xresources) 
    cat $HOME/.Xresources > $repo/Xresources
    printf "The file has been copied to the repo"
    ;;
  -z| --zshrc)
    cat $HOME/.zshrc > $repo/zsh/zshrc
    printf "The file has been copied to the repo"
    ;;
  *)
    $print
    printf "\nUnknow operation $1" 
    printf "\nUsage: $0 -{h|i|n|p|x} "
  esac

