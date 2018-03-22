#!/bin/bash
clear

arg="$1"
repo="$HOME/Projects/dotfiles_archpad/"
text="The file has been copied to the repo"
case $arg in
  -c| --catconfigs)
    cat $HOME/cat_configs.sh > $repo/cat_configs.sh
    printf "$text"
    ;;
  -h| --help)
    printf "\nDescription"
    printf "\nBash script that copies the selected type of config file to the dotfiles repo."
    printf "\n\nUsage:"
    printf "\n\t -c, --catconfigs \n\t\tCopies the script to the repo"
    printf "\n\t -h, --help \n\t\tShows this menu."
    printf "\n\t -i, --i3wm \n\t\tCopies the i3 config file."
    printf "\n\t -n, --neovim \n\t\tCopies the neovim config file."
    printf "\n\t -p, --polybar \n\t\tCopies the polybar config file."
    printf "\n\t -x, --xresources \n\t\tCopies the Xresources file."
    printf "\n\t -z, --zshrc \n\t\tCopies the zshrc file."
    ;;
  -i| --i3wm)
    cat $HOME/.config/i3/config > $repo/i3/config
    printf "$text"
    ;;
  -n| --nvim)
    cat $HOME/.config/nvim/init.vim > $repo/nvim/init.vim
    printf "$text"
    ;;
  -p| --polybar)
    cat $HOME/.config/polybar/config > $repo/polybar/config
    printf "$text"
    ;;
  -x| --xresources) 
    cat $HOME/.Xresources > $repo/Xresources
    printf "$text"
    ;;
  -z| --zshrc)
    cat $HOME/.zshrc > $repo/zsh/zshrc
    printf "$text"
    ;;
  *)
    printf "\nUnknow operation $1" 
    printf "\nUsage: $0 -{h|i|n|p|x} "
  esac

