##########################
# KeyBinds
###########################

set-option -g default-shell /bin/zsh
unbind C-a                  # remove bind for C-b
set-option -g prefix C-a
bind-key C-z send-prefix
unbind %
bind v split-window -h
unbind '"'
bind s split-window -v  
bind -r H resize-pane -L 5   # 5 px bigger to the left
bind -r J resize-pane -D 5   # 5 px bigger down
bind -r K resize-pane -U 5   # 5 px bigger up
bind -r L resize-pane -R 5   # 5 px bigger right
# smart pane switching with awareness of vim splits
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind a new-window
unbind "x"
bind x kill-window
set-window-option -g mode-keys vi
bind-key -T copy-mode-vi v send -X begin-selection
bind-key -T copy-mode-vi V send -X select-line
bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
unbind "b"
bind-key b previous-window
bind-key T choose-tree -swZ
###########################
# Colors
###########################
# color status bar
set -g status-style fg=white,bg=colour235
# color of message bar
set -g message-style fg=white,bold,bg=green
# highlight current window
setw -g window-status-style fg=cyan,bg=colour235
setw -g window-status-current-style fg=white,bold,bg=red
# set color of active pane
set -g pane-border-style fg=colour240,bg=black
set -g pane-active-border-style fg=green,bg=black

###########################
# Plugins
###########################
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
# Add more plugins below this line
# Run Tmux Plugin Manager
run '~/.tmux/plugins/tpm/tpm'

set -g @resurrect-strategy-nvim 'session'
set -g @resurrect-capture-pane-contents 'on'
