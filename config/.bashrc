#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
bind 'TAB:menu-complete'
bind 'set show-all-if-ambiguous on'

function run() {
  "$@">/dev/null 2>&1 & disown
}
