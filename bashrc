# User specific environment and startup programs
# IMPORTANT: The loaded modules set the required variables and paths in your
# environment. Please do not add any reference to /opt in your variables

## vim-like terminal keys
set -o vi

## Load my custom aliases and exports
if [ -f /rhome/mdodson/bash_exports ]; then
  . /rhome/mdodson/bash_exports
fi

# Bra-ket style terminal prompt
PS1='\[\033[0;1;35m\]<\[\033[0;96m\]\u\[\033[0;1;35m\]|\[\033[0;96m\]matrix\[\033[1;1;35m\]\[\033[0;1;35m\]>\[\033[0;1;35m\]<\[\033[0;96m\]\W\[\033[0;1;35m\]>\[\033[0;1;35m\]\[\033[0;1;35m\]\$\[\033[00m\] '
