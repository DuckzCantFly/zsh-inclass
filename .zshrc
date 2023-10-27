### Basic Zshrc Setup ###

# Where should we download your Zsh plugins?
ZPLUGINDIR="${ZDOTDIR:-${XDG_CONFIG_HOME:-${HOME}/.config}/zsh}/plugins"
# Usally:
# ZPLUGINDIR="~/.config/zsh/plugins"

# Make plugin dir
if [ ! -d "${ZPLUGINDIR}" ]; then
	mkdir -p "${ZPLUGINDIR}" 2> /dev/null
fi

# Manual load plugin example
if [ ! -d ${ZPLUGINDIR}/zsh-inclass ]; then
	git clone --quiet "https://github.com/DuckzCantFly/zsh-inclass" "${ZPLUGINDIR}/zsh-inclass"
fi

## load all my basic configs 
source ${ZPLUGINDIR}/zsh-inclass/source-all.plugin.zsh
