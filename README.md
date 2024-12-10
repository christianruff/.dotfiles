# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## Files 
- **bin/linux.sh** sets up the Linux environment.
- **bin/cleanup.sh** cleans up any local changes made by the linux.sh script.
- **Makefile** runs the script automatically using `linux` command to run `linux.sh` and the `clean` command to run `clean.sh`
- **etc/nanorc** customizes the `nano` editor.


## Usage
- To setup the script, use `make linux`
- To restore any changes before the script was made, use `make clean`
