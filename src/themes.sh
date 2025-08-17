#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @gruvbox-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @gruvbox-tmux_transparent)"

case $SELECTED_THEME in
"hard")
  declare -A THEME=(
    ["background"]="#1d2021"
    ["foreground"]="#ebdbb2"
    ["black"]="#282828"
    ["blue"]="#458588"
    ["cyan"]="#689d6a"
    ["green"]="#98971a"
    ["magenta"]="#b16286"
    ["red"]="#cc241d"
    ["white"]="#a89984"
    ["yellow"]="#d79921"

    ["bblack"]="#928374"
    ["bblue"]="#83a598"
    ["bcyan"]="#8ec07c"
    ["bgreen"]="#b8bb26"
    ["bmagenta"]="#d3869b"
    ["bred"]="#fb4934"
    ["bwhite"]="#ebdbb2"
    ["byellow"]="#fabd2f"
  )
  ;;

"soft")
  declare -A THEME=(
    ["background"]="#32302f"
    ["foreground"]="#ebdbb2"
    ["black"]="#282828"
    ["blue"]="#458588"
    ["cyan"]="#689d6a"
    ["green"]="#98971a"
    ["magenta"]="#b16286"
    ["red"]="#cc241d"
    ["white"]="#a89984"
    ["yellow"]="#d79921"

    ["bblack"]="#928374"
    ["bblue"]="#83a598"
    ["bcyan"]="#8ec07c"
    ["bgreen"]="#b8bb26"
    ["bmagenta"]="#d3869b"
    ["bred"]="#fb4934"
    ["bwhite"]="#ebdbb2"
    ["byellow"]="#fabd2f"
  )
  ;;

*)
  # Default to gruvbox dark theme
  declare -A THEME=(
    ["background"]="#282828"
    ["foreground"]="#ebdbb2"
    ["black"]="#282828"
    ["blue"]="#458588"
    ["cyan"]="#689d6a"
    ["green"]="#98971a"
    ["magenta"]="#b16286"
    ["red"]="#cc241d"
    ["white"]="#a89984"
    ["yellow"]="#d79921"

    ["bblack"]="#928374"
    ["bblue"]="#83a598"
    ["bcyan"]="#8ec07c"
    ["bgreen"]="#b8bb26"
    ["bmagenta"]="#d3869b"
    ["bred"]="#fb4934"
    ["bwhite"]="#ebdbb2"
    ["byellow"]="#fabd2f"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#b8bb26"
THEME['ghmagenta']="#d3869b"
THEME['ghred']="#fb4934"
THEME['ghyellow']="#fabd2f"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
