## ==========================================================
## Global Table:
### NB: `-n` == bind in 'root' table
unbind-key -n C-S-F2
unbind-key -n F3
bind-key -n F3 select-pane -t :.-  \; display-panes
unbind-key -n F4
bind-key -n F4 select-pane -t :.+  \; display-panes

unbind-key -n M-Left
unbind-key -n M-Right
unbind-key -n M-Up
unbind-key -n M-Down

## Add Pane (tab) Selection commands 
## ----------------------------

bind-key -n F3 select-pane -t :.-  \; display-panes
bind-key -n F4 select-pane -t :.+  \; display-panes
bind-key -n C-Up select-pane -U    \; display-panes
bind-key -n C-Down select-pane -D  \; display-panes
bind-key -n C-Left select-pane -L  \; display-panes
bind-key -n C-Right select-pane -R \; display-panes

## set window (tab) selection
bind-key -n M-1 select-window -t 0
bind-key -n M-2 select-window -t 1
bind-key -n M-3 select-window -t 2
bind-key -n M-4 select-window -t 3
bind-key -n M-5 select-window -t 4
bind-key -n M-6 select-window -t 5
bind-key -n M-7 select-window -t 6
bind-key -n M-8 select-window -t 7
bind-key -n M-9 select-window -t 8
bind-key -n M-0 select-window -t 9


# Prefix Binds 
# ==========================================================

## Make sure we're using the right prefix
## (auto-generated code-- not _entirely_ sure it's correct)
unbind-key -n C-a
unbind-key -n C-b
set -g prefix ^B
set -g prefix2 F12
bind b send-prefix

## Add Pane (tab) Selection commands 
## ----------------------------
bind-key h split-window -h
bind-key C-h split-window -h
bind-key v split-window -v
bind-key C-v split-window -v
