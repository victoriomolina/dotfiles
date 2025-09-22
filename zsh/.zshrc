# ~/.zshrc - Zsh configuration file
# Last updated: September 22, 2025

# -----------------------
# Powerlevel10k configuration
# -----------------------

# Enable p10k instant prompt for faster startup
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load p10k theme configuration if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source p10k theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# -----------------------
# Plugins
# -----------------------

# Enable zsh-syntax-highlighting for better command-line readability
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -----------------------
# Aliases
# -----------------------

# Python-related aliases for convenience
alias python="python3"  # Use python3 as default python command
alias pip="pip3"        # Use pip3 as default pip command

