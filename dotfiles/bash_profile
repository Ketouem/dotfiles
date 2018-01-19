export PATH=/usr/local/bin:/usr/local/sbin:$PATH

if [ -f ~/.profile ]; then
    source ~/.profile;
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

### GitHub token, useful for avoiding rate limiting with brew
export HOMEBREW_GITHUB_API_TOKEN=""

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ll='ls -l'
alias berknoob='chmod -R 777 ~/.berkshelf'
alias intertubes='ping 8.8.8.8'
alias brupdate='brew update && brew upgrade && brew cleanup && brew cask cleanup'
alias dkrip='docker-machine ip dockerhost | pbcopy'
alias dkrinit='eval "$(docker-machine env dockerhost)"'
alias dkrnuke='docker kill `docker ps -q`; docker rm `docker ps -aq`; docker rmi `docker images -q`'
makeVirtualenvPython343() {
    mkvirtualenv --python="/Users/cyrilthomas/.pyenv/versions/3.4.3/bin/python3.4" $1
}
alias mkvenv343=makeVirtualenvPython343

# virtualenvwrapper
if which pyenv > /dev/null; then
    eval "$(pyenv init -)";
    alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
