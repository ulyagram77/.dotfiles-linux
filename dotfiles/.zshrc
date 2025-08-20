#OH_MY_ZSH CONFIG + VISUAL STUFF
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
fi
export PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# command history
HIST_STAMPS="dd.mm.yyyy"
setopt APPEND_HISTORY         
setopt INC_APPEND_HISTORY      
setopt SHARE_HISTORY          
setopt HIST_IGNORE_DUPS        
setopt HIST_REDUCE_BLANKS 

plugins=(git zsh-autosuggestions fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml


# USER CONFIG
eval "$(zoxide init zsh)"

#aliases
alias hz='history | fzf'
alias h='btop'
alias lg='lazygit'
alias zj='zellij'
alias c='code .'
alias nr='npm run'
alias ni='npm install'
alias myssh='ssh-add ~/.ssh/personal'
alias workssh='ssh-add ~/.ssh/work'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='nano'
fi

# just for fun =)
# wezterm imgcat ./Documents/tyan.png

