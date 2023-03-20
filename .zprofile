# This happens before .zshrc
eval $(/opt/homebrew/bin/brew shellenv)

export PATH="/usr/local/bin:$PATH"

export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/.bin:$PATH

# ruby paths
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# volta paths
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# python paths
export PATH=$(brew --prefix python)/libexec/bin:$PATH

# GPG
export GPG_TTY=$(tty)

# homebrew env
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.secrets/github_pat)

# homebrew curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR="nvim"

export DOTFILES="$HOME/dotfiles"
