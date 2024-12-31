plugins=( git kubectl kubectx nmap zsh-interactive-cd tmux systemd azure aws urltools )

ZSH_THEME="sunaku"
. "$HOME/.oh-my-zsh/oh-my-zsh.sh"


if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi

if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

zstyle ':bracketed-paste-magic' active-widgets '.self-*'
alias ll='ls -lah'
alias clip='xclip -sel clip'
alias cat='batcat --no-paging --style=plain'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi
