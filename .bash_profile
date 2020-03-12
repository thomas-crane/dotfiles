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
export FZF_DEFAULT_COMMAND="rg --files"

# start X
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  # arinterval is the ms delay between key repeats, not the repeat rate in Hz.
  # If you use `xset r rate ... RATE` then the equivalent arinterval here is `1000 / RATE`.
  exec startx -- -ardelay 200 -arinterval 25
fi

