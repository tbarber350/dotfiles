alias m='mvim --remote-silent'


function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }

 RED="\[\033[0;31m\]"
 YELLOW="\[\033[0;33m\]"
 GREEN="\[\033[0;32m\]"
 NO_COLOUR="\[\033[0m\]"
 
 PS1="$GREEN\u@machine$NO_COLOUR:\W$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
 
 alias ..='cd ..'
 alias ...='cd ../..'
 alias ....='cd ../../..'
 alias ll='ls -l'
 alias la='ls -a'
 alias v="vim --remote-silent"
 cdf() {
     target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
       if [ "$target" != "" ]; then
              cd "$target"; pwd
                else
                       echo 'No Finder window found' >&2
                         fi
                      }
                      
export PATH=/usr/local/bin:$PATH
export EDITOR='subl -w'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
