### Prompt Settings ###
# Set up all the basic fetuses for a prompt #

# Set color variables
function _prompt_colors {
	red="%{$fg[red]%}"
	yellow="%{$fg[yellow]%}"
	green="%{$fg[green]%}"
	blue="%{$fg[blue]%}"
	magenta="%{$fg[magenta]%}"
	white="%{$fg[white]%}"
	reset_color="%{$reset_color%}"
}

# Set prompt
function _prompt_set {
	local red yellow green blue magenta white reset_color

	_prompt_colors

	local user_prompt="${yellow}%n"															 # User
	local hostname_prompt="${greetn}@${blue}%M"									 # Hostname
	local cwd_prompt="${magenta}%(5~|%-1~/.../%3~|%4~)"					 # Current working directory (truncated)
	local job_prompt="%(1j.[${yellow}%j${red}].)"								 # Job information
	local newline_prompt=$'\n'																	 # New line so information is separated from input text
	local prompt_symbol="${red}[${reset_color}${white}%(#.#.$) " # Prompt symbol with root status

	PS1="%B${red}[${user_prompt}${hostname_prompt} ${cwd_prompt}${red}]"
	PS1+="${job_prompt}"
	PS1+="${newline_prompt}"
	PS1+="${prompt_symbol}"
} ; _prompt_set
