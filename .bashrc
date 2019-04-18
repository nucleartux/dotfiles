#export ANDROID_HOME=~/Library/Android/sdk
#export PATH=${PATH}:${ANDROID_HOME}/tools
#export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/Users/nucleartux/Work/projects/flutter/bin:$PATH"

function crbr() {
 git checkout master
 git pull
 git checkout -b FRONTEND-$1 ${@:2}
}

alias crbr='crbr'

function cobr() {
 git checkout FRONTEND-$1 ${@:2}
}

alias cobr='cobr'

function devbr() {
 git checkout dev
 git merge FRONTEND-$1 ${@:2}
}

alias devbr='devbr'

alias gclean='git fetch -p && for branch in `git branch -vv | grep '"'"': gone]'"'"' | awk '"'"'{print $1}'"'"'`; do git branch -D $branch; done'
