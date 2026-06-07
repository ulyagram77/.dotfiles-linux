#OH_MY_ZSH CONFIG + VISUAL STUFF
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
fi
PATH=$HOME/.config/composer/vendor/bin:~/.composer/vendor/bin:$PATH
export PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# command history
HIST_STAMPS="dd.mm.yyyy"
setopt SHARE_HISTORY          
setopt HIST_IGNORE_DUPS        
setopt HIST_REDUCE_BLANKS 

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/basket-mono.toml


# USER CONFIG
eval "$(zoxide init zsh --cmd cd)"

#aliases
# alias upg='sudo dnf upgrade --refresh' #for Fedora
alias upg='sudo pacman -Syu' #for Arch
alias f='find . -type f | fzf'
alias hz='history | fzf'
alias h='btop'
alias lg='lazygit'
alias yz='yazi'
alias zj='zellij'
alias c='code .'
alias nr='npm run'
alias ni='npm install'
alias rmssh='ssh-add -D'
alias myssh='ssh-add ~/.ssh/personal'
alias workssh='ssh-add ~/.ssh/work'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='nano'
fi

export EDITOR="code"
export VISUAL="code"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# just for fun =)
# wezterm imgcat ./Documents/tyan.png

# pnpm
export PNPM_HOME="/home/kyrylou/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/init-nvm.sh