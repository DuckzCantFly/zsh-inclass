### Basic Tab Complete ###
# Setup How tab completion works #

# Enable tab completion
autoload -U compinit ; compinit -i

# Set how completions should be disolayed
setopt MENU_COMPLETE

# Load defaylt completion
zmodload zsh/complist

# Set completion Style
## Use colors
eval "$(dircolors)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' menu select

## Set matching options doc -> Documents
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#_comp_options+=(globdots)		# Include hidden files.
