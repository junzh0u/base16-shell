#!/usr/bin/env fish

# [what] provides aliases for base16 themes and sets ~/.base16_theme
#
# [usage] can be added to ~/.config/fish/config.fish like so:
#
# if status --is-interactive
#    source $HOME/.config/base16-shell/profile_helper.fish
# end
#
# TODO: maybe port to $HOME/.config/fish/functions ?


set SCRIPT_DIR (realpath (dirname (status -f)))

# load currently active theme...
if test -e ~/.base16_theme
  set -l SCRIPT_NAME (basename (realpath ~/.base16_theme) .sh)
  set -gx BASE16_THEME (string match 'base16-*' $BASE16_THEME  | string sub -s (string length 'base16-*'))
  eval sh '"'(realpath ~/.base16_theme)'"'
end
