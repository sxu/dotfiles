#!/bin/sh

selection=$(tmux list-panes -s -F "#{pane_id} #{window_name}" | fzf --tmux "center,90%,90%" --preview "tmux capture-pane -ep -t {1}" --preview-window "right,,,nowrap")

if [ -n "$selection" ]; then
    pane_id=$(echo "$selection" | cut -d " " -f 1)
    tmux switch-client -t "$pane_id"
fi
