# Variables for this file only
plugins_dir="/usr/share/zsh/plugins"

# Enable colors on startup
autoload -U colors && colors

# PATH
export PATH="$PATH:$HOME/bin:$HOME/.bin:$HOME/.local/bin:/usr/local/bin:$HOME/.emacs.d/bin:$HOME/bin"

# Other Global Variables
export EDITOR=nvim
export PAGER=most

# Alias
source $ZDOTDIR/.aliasrc
source $ZDOTDIR/.zfunc

# History
export HISTSIZE=10000
export SAVEHIST=10000
## Function from .zfunc
check_cache_dir
export HISTFILE=$cache_path
setopt SHARE_HISTORY

# Zsh Syntax Highlighting, Auto-completion, Auto-suggestions, etc.
source $plugins_dir/zsh-auto-tab/zsh-auto-tab.zsh
source $plugins_dir/zsh-autosuggestions/zsh-autosuggestions.zsh
source $plugins_dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $plugins_dir/zsh-vi-mode/zsh-vi-mode.zsh

# Autorun
pfetch

# Lf
bindkey -s '^o' 'lfcd\n'

# Starship
eval "$(starship init zsh)"
export STARSHIP_CACHE=~/.cache/starship/cache
