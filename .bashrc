# ~/.bashrc

# Continue only if this is an interactive shell
[[ $- != *i* ]] && return

# Don't include commands from this file in shell history
# Remember to 'set -o history' before finishing
set +o history

# Get system-wide definitions
[[ -r /etc/bashrc ]] && source /etc/bashrc
completion='/usr/share/bash-completion/bash_completion'
[[ -z "${BASH_COMPLETION_VERSINFO}" ]] && [[ -r ${completion} ]] && source ${completion}
unset completion

# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\e]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"' ;;
	screen*)
		PROMPT_COMMAND='echo -ne "\e_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\e\\"' ;;
esac

# Enable colors for ls, etc. 
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

# Set the prompt string
shopt -s promptvars
case ${EUID} in
	0)	PS1_user='\[\e[01;31m\]root' ;;
	*)	PS1_user='\[\e[01;32m\]\u' ;;
esac
PS1="${PS1_user}"'@\h\[\e[00m\] $(cat /sys/class/power_supply/BAT/capacity)% \[\e[01;36m\]\w\[\e[00m\] \$ '
unset PS1_user

# Number of subdirectories to show in \w or \W component of PS1
PROMPT_DIRTRIM=2

# Add local X connections to access control list
xhost +local:root > /dev/null 2>&1

# Check window size before each command
shopt -sq checkwinsize

# Read aliases
[[ -r ~/.bash_aliases ]] && source ~/.bash_aliases

# Resume saving commands to shell history
shopt -s histappend
set -o history
