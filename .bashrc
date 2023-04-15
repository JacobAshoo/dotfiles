#
# ~/.bashrc
#
export PATH=$PATH:/home/jacob/.local/bin
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias please="sudo"
alias open="xdg-open"
alias vim="nvim"
alias neofetch="neofetch --color_blocks off"
alias vis="cava"
alias runasm="python3 ~/.scripts/runasm.py"
PS1='[\u@\h \W]\$ '

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

HISTSIZE=
HISTFILESIZE=

eval "$(thefuck --alias)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

