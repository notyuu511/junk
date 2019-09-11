bind 'TAB:menu-complete'
bind 'set show-all-if-ambiguous on'
alias ls='ls --color=auto'
EDITOR=vim

function run() {
  "$@">/dev/null 2>&1 & disown
}
