# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

HISTFILESIZE=2500

ssh-add ~/.ssh/id_rsa
export EDITOR=/usr/bin/nano

export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/usr/local/share/npm/bin:$PATH"

export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
#export PATH="/Users/nucleartux/Work/projects/ondoc/vendor/phpunit/phpunit:$PATH"
#export PATH="/usr/local/Cellar/php56/5.6.2/bin:$PATH"
eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;


#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'
alias ls='ls -GFh'
alias g='git'
#export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.3.4
export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
export ANDROID_NDK=/usr/local/Cellar/android-ndk/r10e


. /Users/nucleartux/torch/install/bin/torch-activate
