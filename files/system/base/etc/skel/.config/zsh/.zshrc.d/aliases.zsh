#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# single character aliases - be sparing!
alias _=sudo
alias l=ls
alias g=git

# mask built-ins with better defaults
alias vi=nvim

# more ways to ls
alias ls='eza -lh --icons=always --hyperlink'
alias l='eza'
alias la='eza -1'
alias lt='eza -T'
alias cat='bat --paging=never'

# alias average commands to modern unix-util counterpartrs
alias cd='z'
alias grep='rg'
alias find='fd'
alias df='duf'

# fix common typos
alias quit='exit'
alias cd..='cd ..'

# tar
alias tarls="tar -tvf"
alias untar="tar -xf"

# find
alias fd='fd . -type d -name'
alias ff='fd . -type f -name'

# url encode/decode
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# misc
alias please=sudo
alias fucking=sudo
alias for-the-love-of-god=sudo
alias zshrc='${EDITOR:-vim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR:-~}'
alias music='ncmpcpp'
alias wttr="curl 'wttr.in/?0' && curl 'wttr.in/?0?m'"
