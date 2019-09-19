#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# npm config
export NPM_CONFIG_PREFIX="$HOME/.npm-global"
export PATH="$NPM_CONFIG_PREFIX/bin:$PATH"

# cargo config
export PATH="$HOME/.cargo/bin:$PATH"

# other env vars
export EDITOR=nvim

# start X
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

