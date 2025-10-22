# Prefix
unbind r
bind r source-file ~/.tmux.conf \; display-message "✅ Tmux config reloaded!"
set -g prefix C-s

# Pane navigation
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# General options
set -g mouse on
set -g default-terminal "tmux-256color"
set-option -g status-position top
set -g status-right-length 100
set -g status-left-length 100

# Plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'catppuccin/tmux'
set -g @plugin 'christoomey/vim-tmux-navigator'

# Catppuccin settings
set -g @catppuccin_flavor "mocha"
set -g @catppuccin_window_status_style "rounded"
set -g @catppuccin_status_modules_right "directory session uptime date_time"
set -g @catppuccin_status_left_separator ""
set -g @catppuccin_status_right_separator ""
set -g @catppuccin_window_current_text " #W"

# Left/right status bar
set -g status-left "#{E:@catppuccin_status_directory}"
set -g status-left "#{E:@catppuccin_window}"
set -g status-right "#{E:@catppuccin_status_session} #{E:@catppuccin_status_uptime} #{E:@catppuccin_status_date_time}"

# Initialize TPM (keep this at the very bottom)
run-shell ~/.tmux/plugins/tpm/tpm

