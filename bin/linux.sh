#!/bin/bash

LOGFILE="linuxsetup.log"
if [ "$(uname)" != "Linux" ]; then
	echo "This can only be run on Linux systems. Exiting now." >> "$LOGFILE"
	exit 1
fi
if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
	echo "Created the ~/.TRASH directory." >> "$LOGFILE"
fi
if [ -f "$HOME/.nanorc" ]; then
	mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
	echo "Renaming ~/.nanorc to ~/.bup_nanorc." >> "$LOGFILE"
fi
cat /etc/nanorc > "$HOME/.nanorc"
echo "Copied contents of /etc/nanorc to ~/.nanorc" >> "$LOGFILE"
echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
echo "Appended source command to .bashrc." >> "$LOGFILE"
