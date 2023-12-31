### General Settings ###
# All of the basic settings should go here. #

# Load terminal colors.
autoload -U colors && colors	2>/dev/null # Load colors

# Basics
setopt autocd		            # Automatically cd into typed directory.
setopt auto_pushd	          # Automatically adds cd to stack.
stty stop undef		          # Disable ctrl-s to freeze terminal.
