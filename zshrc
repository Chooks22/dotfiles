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
[ -s "$XDG_CONFIG_DIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source $XDG_CONFIG_DIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -s "$XDG_CONFIG_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source $XDG_CONFIG_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fpath=($fpath /usr/share/zsh/completions)

n() {
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
