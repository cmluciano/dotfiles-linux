setw -g mode-keys vi

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

#Set bind key
unbind C-b
set -g prefix C-a
bind a send-prefix

# Mouse support - set to on `:if you want to use the mouse
#* setw -g mode-mouse on
#* set -g mouse-select-pane on
#* set -g mouse-resize-pane on
#* set -g mouse-select-window on

# Set the default terminal mode to 256color mode
set -g default-terminal "screen-256color"

# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on

# Center the window list
set -g status-justify centre
