
# Source Prezto {{{1
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
#  }}}1

# Options {{{1

# export editor='vim'
# export VISUAL='vim'

bindkey -v

setopt menucomplete
setopt nobeep
setopt rmstarwait

#  }}}1

# Aliases {{{1

alias chmodall='find . -type f -print0 | xargs -0 chmod 0644 && \
    find . -type d -print0 | xargs -0 chmod 0755'

alias rmxattr='xattr -rc * .*'
alias rmdsstore="find . -name '*.DS_Store' -type f -delete"

alias cleanzip="find . -type d -print0 | xargs -0 chmod 0755 && \
    find . -type f -print0 | xargs -0 chmod 0644 && \
    xattr -rc *; \
    xattr -rc .*; \
    find . -name '*.DS_Store' -type f -delete && \
    find . -name '__MACOSX' -type f -delete && \
    zip -r ../archive.zip ."

alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

# thefuck alias
eval $(thefuck --alias)

# Fix Prezto's BS {{{2

alias cp='nocorrect cp'
alias ln='nocorrect ln'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias cpi="${aliases[cp]:-cp} -i"
alias lni="${aliases[ln]:-ln} -i"
alias mvi="${aliases[mv]:-mv} -i"
alias rmi="${aliases[rm]:-rm} -i"

#  }}}2

#  }}}1

