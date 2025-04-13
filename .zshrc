autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

# keybindings
bindkey '^I'   complete-word       # tab
bindkey '^[[Z' autosuggest-accept  # shift + tab
bindkey "^[[1;5C" forward-word     # ctrl + left
bindkey "^[[1;5D" backward-word    # ctrl + right
bindkey "\e[3~" delete-char        # delete

# plugins
source ~/.zsh/plugins/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.zsh/plugins/zsh-shift-select.plugin.zsh

fastfetch

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.zsh/starship.toml

# atuin
eval "$(atuin init zsh)"

# spicetify-cli
export EDITOR=/usr/bin/vim

# Created by `pipx` on 2025-03-26 06:06:24
export PATH="$PATH:/home/helvetica/.local/bin"
