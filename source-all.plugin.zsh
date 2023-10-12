### Load Default config ###

# basic general settings
source ${ZPLUGINDIR}/zsh-inclass/general/general.plugin.zsh

# Set up some basic history options
source ${ZPLUGINDIR}/zsh-inclass/history/history.plugin.zsh

# Set up better tab completion
source ${ZPLUGINDIR}/zsh-inclass/tab-complete/tab-complete.plugin.zsh

# Set up some basic alias
source ${ZPLUGINDIR}/zsh-inclass/aliasrc/aliasrc.plugin.zsh

# enable corrections
# set correction option
ZSH_DOT_CONFIG_CORRECTION="verbose" # medium short
source ${ZPLUGINDIR}/zsh-inclass/correction/correction.plugin.zsh

# Load all Plugins
source ${ZPLUGINDIR}/zsh-inclass/plugins/plugins.plugin.zsh

# Prompt I use 
# source ${ZPLUGINDIR}/zsh-inclass/prompt/prompt.plugin.zsh

# Enable vi-mode with enhancements
# source ${ZPLUGINDIR}/zsh-inclass/vi-mode/vi-mode.plugin.zsh
