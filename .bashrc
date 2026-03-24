# Starship prompt
eval "$(starship init bash)"

# Export starship prompt config
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Aliases
alias ls='eza --icons -h -l'
alias ll='eza --icons -h -la'

# Aliases scripts
alias syu='sudo $HOME/scripts/updates.sh'
alias age='$HOME/scripts/os_age.sh'
