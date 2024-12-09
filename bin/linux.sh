#!/bin/bash

LOGFILE="linuxsetup.log"
if [ "$(uname)" != "Linux" ]; then
	echo "This can only be run on Linux systems. Exiting now." >> "$LOGFILE"
	exit 1
fi
if [ ! -d "~/.TRASH" ]; then
	mkdir "~/.TRASH"
	echo "Created the ~/.TRASH directory." >> "$LOGFILE"
if [ -f "~/.nanorc" ]; then
	mv "~/.nanorc" "~/.bup_nanorc"
	echo "Renaming ~/.nanorc to ~/.bup_nanorc." >> "$LOGFILE"
fi
cat /etc/nanorc > "~/.nanorc"
echo "Copied contents of /etc/nanorc to ~/.nanorc" >> "$LOGFILE"
echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
echo "Appended source command to .bashrc." >> "$LOGFILE"
