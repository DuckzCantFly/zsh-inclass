# zsh-inclass

To install this config use.

### Step 1

Make sure git is installed.

```bash
sudo dnf install git nvim fish eza
```

### Step 2

Move old `.zshrc`.

```bash
mv ~/.zshrc ~/.zshrc.old

```

### Step 3

Download new `.zshrc`.

```bash
wget "https://raw.githubusercontent.com/DuckzCantFly/zsh-inclass/main/.zshrc"
```

### Step 4

Move in to zsh shell.

```bash
zsh
```

### Step 5 

Show default editor

```bash
echo $EDITOR
```

Run ```e``` command to open default editor

### Step 6

Edit the .profile file. add/edit lines

```bash
nvim .profile
```

```bash
export EDITOR="nvim"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
```

### Step 7

Link .profile to .zprofile

```bash
ln .profile $HOME/.zprofile
```

Link new .zshrc to $ZDOTDIR/.zshrc

```bash
ln .config/zsh/plugins/zsh-inclass/.zshrc .config/zsh/.zshrc
```

Delete old .zshrc

```bash
rm .zshrc
```

Exit zsh

```bash
exit
```

Reload .profile


```bash
source .profile
```

Reopen zsh

```bash
zsh
```

### Step 8

move to $ZDOTDIR

```bash
cd $ZDOTDIR
```

```bash
la
```

```bash
pwd
```

open .zshrc

```bash
e .zshrc
```

exit nvim

move to plugins dir and list plugins

```bash
cd plugins ; ls
```

move to zsh-inclass

```bash
cd  zsh-inclass ; la
```

Cat .zshrc

```bash
cat .zshrc
```

### Step 9

view contents of source-all.plugin.zsh

```bash
e source-all.plugin.zsh
```

Comment out prompt I use line
```bash
# Prompt I use 
source ${ZPLUGINDIR}/zsh-inclass/prompt/prompt.plugin.zsh
```
\\/ \\/
```bash
# Prompt I use 
# source ${ZPLUGINDIR}/zsh-inclass/prompt/prompt.plugin.zsh
```
Un-comment out prompt I use line

```bash
# Powerline10k
## pretty prompt
if [ ! -d ${ZPLUGINDIR}/powerlevel10k ]; then
	git clone --quiet "https://github.com/romkatv/powerlevel10k" "${ZPLUGINDIR}/powerlevel10k"
fi

# source ${ZPLUGINDIR}/powerlevel10k/powerlevel10k.zsh-theme

# Enable vi-mode with enhancements
# source ${ZPLUGINDIR}/zsh-inclass/vi-mode/vi-mode.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ${ZDOTDIR:-${HOME}}/.p10k.zsh ]] || source ${ZDOTDIR:-${HOME}}/.p10k.zsh
```
\\/ \\/

```bash
# Powerline10k
## pretty prompt
if [ ! -d ${ZPLUGINDIR}/powerlevel10k ]; then
	git clone --quiet "https://github.com/romkatv/powerlevel10k" "${ZPLUGINDIR}/powerlevel10k"
fi

source ${ZPLUGINDIR}/powerlevel10k/powerlevel10k.zsh-theme

# Enable vi-mode with enhancements
# source ${ZPLUGINDIR}/zsh-inclass/vi-mode/vi-mode.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[[ ! -f ${ZDOTDIR:-${HOME}}/.p10k.zsh ]] || source ${ZDOTDIR:-${HOME}}/.p10k.zsh
```

close and open zsh

```bash
exit
```

```bash
zsh
```

setup p10k

### Step 9

Change some default alises

open the config dir using alise cfzp

```bash
cfzp
```

list contents of source all file

```bash
cat source-all.plugin.zsh
```

edit the alises file
```bash
e aliserc/aliserc.plugin.zsh
```

change lines

```bash
# Shortcuts
alias \
	cfz="e ${ZDOTDIR:-$HOME}/.zshrc"\
	cfzp="cd ${ZPLUGINDIR}/zsh-inclass ; ls"\
```
\\/ \\/
```bash
# Shortcuts
alias \
	cfz="e ${ZDOTDIR:-$HOME}/.zshrc"\
	cfzp="cd ${ZPLUGINDIR}/zsh-inclass ; e ."\
```

save file and reload zsh 

```bash
szrc
```

test the new alise

```bash
cfzp
```

### (Optional) Step 10

Change your user shell to zsh. 

```bash
chsh /usr/bin/zsh
```

log out and log back in, zsh should be your new shell, and the new profile file should be loaded by default

### (Optional) Step 11

check out my repo for cool linux softewhere
