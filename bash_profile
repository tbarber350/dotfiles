# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
alias m="mvim --remote-silent"
alias vms="vm --remote-silent"

# work directories
alias cdn="cd /Volumes/ContentImages/CDNRepository/"
alias dpcss="cd /Volumes/ContentImages/CDNRepository/css/DP/story"
alias dpjs="cd /Volumes/ContentImages/CDNRepository/JS/DP/story" 
alias dpimages="cd /Volumes/ContentImages/CDNRepository/Images/DP/story" 
alias dp="cd /Volumes/design\ group/20\ Web\ Center/01\ NewWeb/100\ CMS/19_Detail_Page/stories/"
alias 500="cd /Volumes/melaleuca.net/Design\ Group/500\ Web\ Marketing/"
alias melahome="cd ~/Documents/projects/melaleuca_com/"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias back='cd $OLDPWD'
alias lf="ls -p | '/'"
alias ll="ls -l"
alias la="ls -a"
alias lal="ls -al"
alias accounts="cat ~/Documents/test_account_ids.txt"


function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }

function tabname {
   printf "\e]1;$1\a"
}

function winname {
   printf "\e]2;$1\a"
}

 RED="\[\033[0;31m\]"
 YELLOW="\[\033[0;33m\]"
 GREEN="\[\033[0;32m\]"
 NO_COLOUR="\[\033[0m\]"
 
 PS1="$GREEN\u@machine$NO_COLOUR:\W$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
 
 cdf() {
     target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
       if [ "$target" != "" ]; then
              cd "$target"; pwd
                else
                       echo 'No Finder window found' >&2
                         fi
                      }
                      
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/share/npm/lib/node_modules/jshint/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/travis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
