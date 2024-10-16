# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="random"
plugins=(git zsh-bat z kitty sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting jsontools ls node npm zsh-eza)
ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH_LS_DISABLE_GIT=true

source $ZSH/oh-my-zsh.sh

# source "$HOME/.zsh/spaceship/spaceship.zsh"

# pnpm
export PNPM_HOME="/home/cheb1/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
export LS_COLORS="di=34:fi=32:ln=36:pi=33:so=35:bd=34;46:cd=34;43:ex=31;01:*.tar=35"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"


alias python='python3'
# alias ld="eza -lD"
# alias ll='eza -la --icons --color=always --group-directories-first --git --time-style=long-iso'
# alias ll='eza -alhF --git --icons --color=always --time-style=long-iso'
alias ll='eza -alhF --group-directories-first --git --icons --color=always --time-style=long-iso'




# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# export LS_COLORS='di=34;42:fi=00:mi=00:mh=00:ln=01;36:or=01;31:... '

export PATH="$HOME/.cargo/bin:$PATH"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# alias ll="exa"
ZSH_DISABLE_COMPFIX=true

export COMPOSER=dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6
