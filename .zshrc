### Basic Zshrc Setup ###

# Where should we download your Zsh plugins?
ZPLUGINDIR=${ZDOTDIR:-${XDG_CONFIG_HOME:-${HOME}/.config}/zsh}/plugins

# Make plugin dir
if [ ! -d ${ZPLUGINDIR} ]; then
	mkdir -p "${ZPLUGINDIR}" 2> /dev/null
fi

# Manual load plugin example
if [ ! -d ${ZPLUGINDIR}/zsh-inclass ]; then
	git clone --quiet "https://github.com/DuckzCantFly/zsh-inclass" "${ZPLUGINDIR}/zsh-inclass"
fi

# load all my basic configs 
source ${ZPLUGINDIR}/zsh-inclass/source-all.plugin.zsh

## Powerline10k
### pretty prompt
if [ ! -d ${ZPLUGINDIR}/powerlevel10k ]; then
	git clone --quiet "https://github.com/romkatv/powerlevel10k" "${ZPLUGINDIR}/powerlevel10k"
fi

source ${ZPLUGINDIR}/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
