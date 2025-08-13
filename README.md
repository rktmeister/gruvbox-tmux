# gruvbox-tmux

A tiny TPM plugin that gives you a **Gruvbox Dark Hard** statusline with:
- boxed window tabs (icons + names via `#W`)
- `○ <session>` on the left
- current path on the right (last N segments)

## Install (TPM)

Add to your `~/.tmux.conf`:

```tmux
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'joshmedeski/tmux-nerd-font-window-name'  # icons & names (optional but recommended)
set -g @plugin 'rktmeister/gruvbox-tmux'

# recommended
set -g automatic-rename on
set -g allow-rename on
set -g @tmux-nerd-font-window-name-show-name true
set -g default-terminal "tmux-256color"
set -as terminal-features 'xterm-256color:RGB'

