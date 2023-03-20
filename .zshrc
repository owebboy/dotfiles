# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# OMZ
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"

plugins=(
  1password iterm2
  brew macos man
  common-aliases
  git git-lfs gh git-prompt
  fzf
  node 
  colored-man-pages
  rust
  python pip virtualenv
  volta
  vscode
  ripgrep
  rsync
  tmux
  virtualenv
  zsh-interactive-cd
  zsh-autosuggestions 
  zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh

source $DOTFILES/scripts/fzf-git.sh

[[ ! -f ~/.p10k.zsh ]] || source $HOME/.p10k.zsh

