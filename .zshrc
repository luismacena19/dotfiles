# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ -z $SSH_AUTH_SOCK ]; then
   eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
   export SSH_AUTH_SOCK
   export AWT_TOOLKIT=MToolkit
   dbus-update-activation-environment --all
   source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
fi 

# Path to your oh-my-zsh installation.
export ZSH="/home/nullroot_/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nullroot_/.local/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nullroot_/.local/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nullroot_/.local/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nullroot_/.local/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
eval "$(pyenv virtualenv-init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
