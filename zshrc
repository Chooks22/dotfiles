# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable vi mode
bindkey -v

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chooks/.zshrc'

# End of lines added by compinstall

# Powerlevel10k
[ -f ~/.config/p10k/powerlevel10k.zsh-theme ] && source ~/.config/p10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

# Aliases
[ -f ~/.aliasrc ] && source ~/.aliasrc

# Init nvm
export NVM_DIR=$HOME/.config/nvm
[ -f $NVM_DIR/nvm.sh ] && \. $NVM_DIR/nvm.sh

# Init nnn
if command -v nnn &> /dev/null; then
  source ~/.config/nnn/nnnrc
fi

# zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

fpath=($fpath /usr/share/zsh/completions)
