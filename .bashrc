#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias ll='ls -al'
alias grep='grep --color=auto'

# set up the prompt
# in case we ever want the simple prompt, we'll leave it here.
__prompt () {
	local cyan="\[$(tput setaf 6)\]"
	local white="\[$(tput setaf 7)\]"
	local magenta="\[$(tput setaf 4)\]"
	local purple="\[$(tput setaf 5)\]"
	local reset="\[$(tput sgr0)\]"
	local bold="\[$(tput bold)\]"
	local username="\u"
	local hostname="\h"
	local dir="\w"
	local yellow="\[$(tput setaf 3)\]"

	printf "%s%s%s%s%s%s" \
		"${bold}" \
		"${magenta}[" \
		"${yellow}${username}${purple}@${cyan}${hostname}" \
		" ${white}${dir}" \
		"${magenta}]\$ " \
		"${reset}"
}

# if starship is not available, or we just want a simple prompt
# uncomment the following line.
# PS1=$(__prompt)
eval "$(starship init bash)"

