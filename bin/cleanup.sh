#!/bin/bash

rm "$HOME/.nanorc"
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"
rm -rf "$HOME/.TRASH"
