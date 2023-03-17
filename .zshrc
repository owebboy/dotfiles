# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# OMZ
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"

plugins=(
  1password 
  brew macos man 
  git git-lfs gh
  fzf
  node 
  colored-man-pages
  rust
  python pip virtualenv
  volta
  vscode
  ripgrep
  zsh-interactive-cd
  zsh-autosuggestions 
  zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform


[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source $HOME/.p10k.zsh

