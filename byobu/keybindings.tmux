## ==========================================================
## Global Table:
### NB: `-n` == bind in 'root' table
unbind-key -n C-S-F2
unbind-key -n F3
unbind-key -n F4
unbind-key -n M-Left
unbind-key -n M-Right
unbind-key -n M-Up
unbind-key -n M-Down

bind-key -n F3 select-pane -t :.-  \; display-panes
bind-key -n F4 select-pane -t :.+  \; display-panes
bind-key -n C-Up select-pane -U    \; display-panes
bind-key -n C-Down select-pane -D  \; display-panes
bind-key -n C-Left select-pane -L  \; display-panes
bind-key -n C-Right select-pane -R \; display-panes


## ==========================================================
## Make sure we're using the right prefix
## (auto-generated code-- not _entirely_ sure it's correct)
unbind-key -n C-a
unbind-key -n C-b
set -g prefix ^B
set -g prefix2 F12
bind b send-prefix

## bind defaults to the 'prefix' table
bind-key h split-window -h
bind-key C-h split-window -h
bind-key v split-window -v
bind-key C-v split-window -v
