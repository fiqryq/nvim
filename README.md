## Personal dotfiles
dotfile for my personal workflows.

## Ingredients

- vim (NeoVim)
- tmux
- fish

## Shell setup (macOS & Linux)

- [Fish shell](https://fishshell.com/).
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager.
- [Tide](https://github.com/IlanCosman/tide) - Shell theme. Use version 5: `fisher install ilancosman/tide@v5`.
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping.
- [Exa](https://the.exa.website/) - `ls` replacement.
- [Trash](https://www.npmjs.com/package/trash) - `rm` replacement.

## Tmux action key

```shell
#set -g default-terminal "tmux-256color"
set -g default-terminal "xterm-256color"
#set -ga terminal-overrides ",*256col*:Tc"
set -ga terminal-overrides ",xterm-256color:Tc"
# action key
unbind C-b
set-option -g prefix C-t
set-option -g repeat-time 0
set-option -g focus-events on

#### Key bindings

set-window-option -g mode-keys vi

#bind t send-key C-t
# Reload settings
bind r source-file ~/.tmux.conf \; display "Reloaded!"
# Open current directory
bind o run-shell "open #{pane_current_path}"
bind -r e kill-pane -a

# vim-like pane switching
bind -r k select-pane -U 
bind -r j select-pane -D 
bind -r h select-pane -L 
bind -r l select-pane -R 

# Moving window
bind-key -n C-S-Left swap-window -t -1 \; previous-window
bind-key -n C-S-Right swap-window -t +1 \; next-window

# Resizing pane
bind -r C-k resize-pane -U 5
bind -r C-j resize-pane -D 5
bind -r C-h resize-pane -L 5
bind -r C-l resize-pane -R 5
```
