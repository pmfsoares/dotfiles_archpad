#!/bin/bash
clear

arg="$1"
repo="$HOME/Projects/dotfiles_archpad/"

case $arg in
  -h| --help)
    printf "Bash script that copies the selected type of config file to the
    dotfiles repo \n"
    printf " -i, --i3wm \n \tCopies the i3 config file \n -p, --polybar \n\tCopies the polybar config file \n -x, --xresources \n\tCopies the Xresources file \n -h, --help \n\tShows this menu"
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

  esac

