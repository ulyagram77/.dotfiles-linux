# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

# precmd() {
#   precmd() {
#     echo
#   }
# }

# History configuration
HISTFILE=~/.zsh/.histfile      # File where history is saved
HISTSIZE=10000                 # Number of commands to keep in memory
SAVEHIST=10000                 # Number of commands to save to the history file

setopt APPEND_HISTORY          # Append commands to the history file (don't overwrite)
setopt INC_APPEND_HISTORY      # Immediately add commands to history after execution
setopt SHARE_HISTORY           # Share history between all sessions
setopt HIST_IGNORE_DUPS        # Ignore duplicated commands in a row
setopt HIST_REDUCE_BLANKS      # Remove superfluous blanks from commands


# export M2_HOME=/opt/apache-maven-3.9.9
# export PATH=$PATH:$M2_HOME/bin

# Personal settings
alias nr='npm run'
alias ni='npm install'
alias lg='lazygit'
alias zj='zellij'
alias own-ssh='ssh-add ~/.ssh/personal'
alias autocode-ssh='ssh-add ~/.ssh/autocode'
alias work-ssh='ssh-add ~/.ssh/tourflow_rsa'
alias autocode-ssh='ssh-add ~/.ssh/autocode'

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export STARSHIP_CONFIG=~/.config/starship/starship.toml
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

if [[ -z "${SSH_CONNECTION}" ]]; then
  export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# sh ~/.config/waifu.sh
# wezterm imgcat ./Documents/tyan.png

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting (should be in the end)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
