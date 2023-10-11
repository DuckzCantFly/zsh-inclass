### Boot-Straped ZSH Config ###

# Where should we download your Zsh plugins?
ZPLUGINDIR=${ZDOTDIR:-${XDG_CONFIG_HOME:-${HOME}/.config}/zsh}/plugins

# Make plugin dir
if [ ! -d ${ZPLUGINDIR} ]; then
	mkdir -p "${ZPLUGINDIR}" 2> /dev/null
fi

_zplug_load(){
	if [ ! -d ${ZPLUGINDIR}/$2 ]; then
		git clone --quiet "https://github.com/$1/$2" "${ZPLUGINDIR}/$2"
	fi
	source ${ZPLUGINDIR}/$2/*.plugin.zsh
}

# Manual load plugin example
if [ ! -d ${ZPLUGINDIR}/zsh-dot-plugin ]; then
	git clone --quiet "https://github.com/DuckzCantFly/zsh-inclass" "${ZPLUGINDIR}/zsh-inclass"
fi

source ${ZPLUGINDIR}/zsh-dot-plugin/general/general.plugin.zsh
source ${ZPLUGINDIR}/zsh-dot-plugin/history/history.plugin.zsh
source ${ZPLUGINDIR}/zsh-dot-plugin/tab-complete/tab-complete.plugin.zsh
source ${ZPLUGINDIR}/zsh-dot-plugin/alias/alias.plugin.zsh

# Function load plugins and configs

## Zsh-Completions
### get more tab completion options
_zplug_load zsh-users zsh-completions

## Zsh-History-Substring-Search
### search for previous comands in the terminal
_zplug_load zsh-users zsh-history-substring-search

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

## Zsh-Autosuggestions
### Zsh guesses next command
_zplug_load zsh-users zsh-autosuggestions

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
# ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# bindkey '<M-Space>' autosuggest-accept

## Zsh-You-Should-Use
### zsh reminds you of alises
_zplug_load MichaelAquilina zsh-you-should-use

export YSU_MESSAGE_POSITION="after"	# Display after output 
# export YSU_MODE=ALL									# Display all matches, default: BESTMATCH
# export YSU_HARDCORE=1								# Force use of aliase

# YSU msg componets
error="${fg[red]}%command\e[0m"
fix="${fg_bold[green]}%alias\e[0m"
arrow="->"

# YSU msg
export YSU_MESSAGE_FORMAT="${error} ${arrow} ${fix}"

export YSU_IGNORED_ALIASES=(
) # Disaable on commands

## Fast-Syntax-Highlighting
### Colors typed txt so output looks better
_zplug_load zdharma-continuum fast-syntax-highlighting
