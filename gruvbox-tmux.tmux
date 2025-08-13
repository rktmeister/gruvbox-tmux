##### rktmeister/gruvbox-tmux — Gruvbox Dark Hard boxed tabs (no shell)

# Options (set before plugin line if you want to change them)
if -F '#{==:#{@gruvbox_status_position},top}' \
  'set -g status-position top' \
  'set -g status-position bottom'
if -F '#{==:#{@gruvbox_tab_width},}'     'set -g @gruvbox_tab_width 18'
if -F '#{==:#{@gruvbox_folder_icon},}'   'set -g @gruvbox_folder_icon '

# Base palette
set -g status on
set -g status-style "bg=#1d2021,fg=#ebdbb2"     # dark0_hard / light1
set -g status-left-length 100
set -g status-right-length 100
set -g message-style         "fg=#8ec07c,bg=#3c3836,align=centre"
set -g message-command-style "fg=#8ec07c,bg=#3c3836,align=centre"
set -g pane-border-style        "fg=#3c3836"
set -g pane-active-border-style "fg=#83a598"

# Left: session
set -g status-left "#[fg=#ebdbb2,bg=#1d2021] ○ #S "

# Middle: boxed tabs
set -g window-status-separator ""
set -g window-status-style "fg=#ebdbb2,bg=#1d2021,none"
set -g window-status-format         "#[fg=#1d2021,bg=#83a598] #I #[fg=#ebdbb2,bg=#3c3836,nobold] #{=#{@gruvbox_tab_width}:#W} "
set -g window-status-current-format "#[fg=#1c1c1c,bg=#fe8019] #I #[fg=#ebdbb2,bg=#3c3836,bold]   #{=#{@gruvbox_tab_width}:#W} "

# Right: (safe fallback) full path or basename only — no #()
# If you want full path:
set -g status-right "#[fg=#83a598,bg=#1d2021]#{@gruvbox_folder_icon} #[fg=#ebdbb2,bg=#1d2021] #{pane_current_path} "
# Or, if you prefer only the last component, uncomment this instead:
# set -g status-right "#[fg=#83a598,bg=#1d2021]#{@gruvbox_folder_icon} #[fg=#ebdbb2,bg=#1d2021] #{b:pane_current_path} "

# Modes
set -g clock-mode-colour "#83a598"
set -g mode-style "fg=#d3869b bg=#665c54 bold"

