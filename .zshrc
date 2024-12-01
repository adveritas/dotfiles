# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝
                                
# ZSH Configuration by adveritas


# Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Aliases

alias i='sudo pacman -S'
alias s='yay -Ss'
alias r='sudo pacman -Rs'
alias update='yay'


# Miscellaneous

setopt autocd extendedglob
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000


# Plugins

# Powerlevel10k
source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL9K_CONFIG_FILE=~/.config/zsh/.p10k.zsh
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Zoxide
eval "$(zoxide init zsh --cmd cd)"

# Autosuggestions
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax-highlighting - must be at end
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
