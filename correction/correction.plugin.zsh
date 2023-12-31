### Nyae Correction ###
# Sets up autocorection formating #

# enable correction
setopt CORRECT

# Setup for each basic element
function _correction-prompt-elements(){
	nl="\e[0m${fg[blue]}"
	nb="${fg_bold[blue]}"
	start=""
	error="${fg[red]}%R\e[0m"
	fix="${fg_bold[green]}%r\e[0m"
	arrow="->"
	errormsg="${fg[red]}Syntax Error:\e[0m"
}

# Layout for long version of prompt.
function _correction-prompt-verbose(){
	local nl nb start error fix arrow errormsg
	_correction-prompt-elements
	# local nyae="${nl}${nb}(N)${nl}o${nb}(y)${nl}es${nb}(a)${nl}ll${nb}(e)${nl}dit\e[0m"
	# local nyae="${nl}(${nb}N${nl})o(${nb}y${nl})es(${nb}a${nl})ll(${nb}e${nl})dit\e[0m"
	local nyae="${nl}${nb}N${nl}o|${nb}y${nl}es|${nb}a${nl}ll|${nb}e${nl}dit\e[0m"
	_sprompt="${start} ${errormsg} Replace '${error}' with '${fix}' [${nyae}]: "
	SPROMPT="$( echo ${_sprompt} )"
}

# Layout for medium version of prompt.
function _correction-prompt-medium(){
	local nl nb start error fix arrow errormsg
	_correction-prompt-elements
	# local nyae="${nl}(${nb}N${nl})(${nb}y${nl})(${nb}a${nl})(${nb}e${nl})\e[0m"
	local nyae="${nb}N${nl}|${nb}y${nl}|${nb}a${nl}|${nb}e\e[0m"
	# local nyae="${nb}Nyae\e[0m"
	_sprompt="${start} Replace '${error}' with '${fix}' [${nyae}]: "
	# local _sprompt="${start} '${error}' ${arrow} '${fix}' [${nyae}]: "
	# local _sprompt="${start} Replace '${error}' '${fix}'?: "
	SPROMPT="$( echo ${_sprompt} )"
}

# Layout for short version of prompt.
function _correction-prompt-short(){
	local nl nb start error fix arrow errormsg
	_correction-prompt-elements
	# local _sprompt="${start}\"${error}\" ${arrow} \"${fix}\": "
	# local _sprompt="${start}'${error}' ${arrow} '${fix}': "
	_sprompt="${start} ${error} ${arrow} ${fix}: "
	SPROMPT="$( echo ${_sprompt} )"
}

# Which layout should we use?
function _correction-set(){
	case "${ZSH_DOT_CONFIG_CORRECTION}" in
		verbose)	_correction-prompt-verbose ;;
		medium)		_correction-prompt-medium ;;
		short)		_correction-prompt-short ;;
		*)
	esac
} ; _correction-set
