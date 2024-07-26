# Perforce diff & merge tools
export PATH=$PATH:/Applications/p4merge.app/Contents/MacOS

# PlatformIO (Python)
# export PATH=$PATH:~/.platformio/penv/bin

# Brew Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export PS1="\t \u:\w\$(__git_ps1) $ "
#export EDITOR="/Applications/TextMate.app/Contents/Resources/mate -wl1"

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

export HISTSIZE=5000
export HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

alias u="cd .."
alias uu="cd ../.."
alias uuu="cd ../../.."
alias uuuu="cd ../../../.."
alias e="/Applications/TextMate.app/Contents/Resources/mate"
alias ls="ls -GpFh"
alias ll="ls -la"
alias p4diff="/Applications/p4merge.app/Contents/Resources/launchp4merge $*"

plist(){
    echo $1 | tr ':' '\n'
}
alias pp='plist "$PATH"'

source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export LS_COLORS=$LS_COLORS'di=0;35:'

