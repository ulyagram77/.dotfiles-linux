# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

precmd() {
  precmd() {
    echo
  }
}

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

export M2_HOME=/opt/apache-maven-3.9.9
export PATH=$PATH:$M2_HOME/bin

ssh-setup-own() {
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/github
}

ssh-setup-autocode() {
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/autocode
}

# sh ~/.config/waifu.sh
# wezterm imgcat ./Documents/tyan.png
eval "$(starship init zsh)"


