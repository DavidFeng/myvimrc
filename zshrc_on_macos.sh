
export HOMEBREW_NO_AUTO_UPDATE=TRUE

DISABLE_UNTRACKED_FILES_DIRTY="true"
# use this for repo which slow down zsh
# git config --add oh-my-zsh.hide-dirty 1

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
plugins=(git brew cabal sublime)

source $ZSH/oh-my-zsh.sh
source ~/david/myvimrc/aliases_for_os_x.sh

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim

export PATH=/usr/local/sbin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/bin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH=~/work/flutter-space/flutter/bin:$PATH

# some pip local installed apps
export PATH=~/Library/Python/2.7/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 12)

# env LUA_PATH : package.path, LUA_CPATH
export LUAPATH=~/Lua/lua-5.3.5/src
export LUADIR=~/Lua/lua-5.3.5/src

export VIS_PATH=~/david/vis

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && source "/usr/local/opt/nvm/etc/bash_completion" 

# https://stackoverflow.com/questions/47620508/how-to-set-node-path-when-using-nvm
# nvm intentionally does not set NODE_PATH because it's an antipattern to use it
# it allows you to require things that aren't locally installed.
export NODE_PATH=~/.nvm/versions/node/v12.13.0/lib/node_modules

# auto jump 2018-04-13 Fri 18:14
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export GPG_TTY=$(tty)

set -o vi
