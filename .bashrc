# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

alias ping="ping 1.1.1.1"

alias ls="ls -la --color=auto"

alias ..="cd .."
alias ...="cd ../.."

alias nano="vim"
alias vi="vim"
alias visudo="sudo EDITOR=vim visudo"


alias emerge="sudo emerge"

alias wpa="sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf"
alias wpakill="sudo pkill wpa_supplicant"
alias wpaga="sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant-huawei.conf"

alias rm="sudo rm"

alias scrennfetch="cd ~/Pictures/screenshots && neofetch && scrot -d 3 && cd"
