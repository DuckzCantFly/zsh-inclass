### VI Mode setup ###
# Set up vi mode for zsh #

# Basics
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select() {
		case $KEYMAP in
				vicmd) echo -ne '\e[1 q';;      # block
				viins|main) echo -ne '\e[5 q';; # beam
		esac
} ; zle -N zle-keymap-select

# Not really sure what this does but its important
function zle-line-init() {
		# initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
		zle -K viins #
		echo -ne "\e[5 q"
} ; zle -N zle-line-init

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}
