# ------------ User options (set these in tmux.conf BEFORE this plugin) -------
# @gruvbox_status_position   "bottom" (default) | "top"
# @gruvbox_tab_width         integer, default 18
# @gruvbox_path_segments     integer, default 3
# @gruvbox_folder_icon       string, default "" (Nerd Font)

# defaults (only set if empty)
if -F '#{==:#{@gruvbox_tab_width},}'      "set -g @gruvbox_tab_width 18"
if -F '#{==:#{@gruvbox_path_segments},}'  "set -g @gruvbox_path_segments 3"
if -F '#{==:#{@gruvbox_folder_icon},}'    "set -g @gruvbox_folder_icon "

# position
if -F '#{==:#{@gruvbox_status_position},top}' \
  'set -g status-position top' \
  'set -g status-position bottom'

# ------------ Gruvbox Dark Hard palette --------------------------------------
# base
set -g status-style "bg=#1d2021,fg=#ebdbb2"      # dark0_hard / light1
set -g status-left-length 100
set -g status-right-length 100

# messages / panes
set -g message-style         "fg=#8ec07c,bg=#3c3836,align=centre"  # cyan / dark1
set -g message-command-style "fg=#8ec07c,bg=#3c3836,align=centre"
set -g pane-border-style        "fg=#3c3836"
set -g pane-active-border-style "fg=#83a598"                        # blue

# ------------ Left / Middle / Right ------------------------------------------
# left: bullet + session
set -g status-left "#[fg=#ebdbb2,bg=#1d2021] ○ #S "

# middle: BOXED tabs (index chip + iconified window name #W)
# inactive
set -g window-status-separator ""
set -g window-status-style "fg=#ebdbb2,bg=#1d2021,none"
set -g window-status-format         "#[fg=#1d2021,bg=#83a598] #I #[fg=#ebdbb2,bg=#3c3836,nobold] #{=#{@gruvbox_tab_width}:#W} "
# active
set -g window-status-current-format "#[fg=#1c1c1c,bg=#fe8019] #I #[fg=#ebdbb2,bg=#3c3836,bold]   #{=#{@gruvbox_tab_width}:#W} "

# right: folder + truncated path (last N segments; ~ for $HOME)
set -g status-right "#[fg=#83a598,bg=#1d2021]#{@gruvbox_folder_icon} #[fg=#ebdbb2,bg=#1d2021] #(echo '#{pane_current_path}' | sed 's|^$HOME|~|' | awk -F/ -v n=#{@gruvbox_path_segments} '{ s=\"\"; for(i=NF-n+1;i<=NF;i++){ if(i>0) s=(s==\"\"?$i:s\"/\"$i) } print s }') "

# modes
set -g clock-mode-colour "#83a598"
set -g mode-style "fg=#d3869b bg=#665c54 bold"                     # purple on dark3

