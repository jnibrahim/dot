HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
zstyle :compinstall filename '${HOME}/.zshrc'

autoload -Uz compinit
compinit

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='darwin'
fi

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

prompt paradox

if [[ $platform == 'linux' ]]; then
elif [[ $platform == 'darwin' ]]; then
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
fi

export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
export GOPATH=$HOME/go

alias vi="nvim"
