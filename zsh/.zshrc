

alias vpn-up="nmcli connection up vpn-radar passwd-file ~/vpn/radar-password"
alias vpn-down="nmcli connection down vpn-radar"
alias vpn-geo-up="cat ~/vpn/geo-openvpn3  | openvpn3 session-start --config ~/vpn/geo.ovpn"
alias vpn-geo-down="openvpn3 session-manage --disconnect --config ~/vpn/geo.ovpn"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# load a random theme each tim
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-bat zsh-autocomplete)

source $ZSH/oh-my-zsh.sh
