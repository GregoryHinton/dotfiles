#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't include commands from this file in shell history
# *** Remember to 'set -o history' before finishing ***
set +o history

# Get system-wide definitions
[[ -r /etc/bashrc ]] && source /etc/bashrc
completion='/usr/share/bash-completion/bash_completion'
[[ -z "${BASH_COMPLETION_VERSINFO}" ]] && [[ -r ${completion} ]] && source ${completion}
unset completion

# Update window title after each command
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\e]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"' ;;
	screen*)
		PROMPT_COMMAND='echo -ne "\e_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\e\\"' ;;
esac

# Enable colors for ls, grep, etc. 
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.config/dir_colors ]] && match_lhs="${match_lhs}$(<~/.config/dir_colors)"
[[ -f ~/.dir_colors ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}  ]] && type -P dircolors >/dev/null && match_lhs="$(dircolors --print-database)"
if type -P dircolors >/dev/null ; then
	if [[ -f ~/.config/dir_colors ]] ; then
		eval $(dircolors -b ~/.config/dir_colors)
	elif [[ -f ~/.dir_colors ]] ; then
		eval $(dircolors -b ~/.dir_colors)
	elif [[ -f /etc/DIR_COLORS ]] ; then
		eval $(dircolors -b /etc/DIR_COLORS)
	fi
fi
unset safe_term match_lhs

# Fancy multi-line prompt
shopt -s promptvars
color0="\[\e[00m\]"
case $EUID in
    0)  color1="\[\e[31;1m\]" ;;
    *)  color1="\[\e[32;1m\]" ;;
esac
color2="\[\e[36;1m\]"
PS1="${color0}"
PS1+='[$?] '
PS1+="${color1}"
PS1+='\u@\h'
PS1+="${color0}"
PS1+=':'
PS1+="${color2}"
PS1+='${PWD}'
PS1+="${color0}"
PS1+=' \$ '
export PS1
unset color0 color1 color2

# Add local X connections to access control list
xhost +local:root > /dev/null 2>&1

# Check window size before each command
shopt -sq checkwinsize

# Read aliases
[[ -r ~/.alias ]] && source ~/.alias

# Resume saving to history
shopt -s histappend
set -o history
