#!/bin/sh

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

cat > $HOME/.tmux.conf << EOF
source-file $SCRIPT_DIR/.tmux.conf
EOF

cat > $HOME/.gitconfig << EOF
[include]
    path = $SCRIPT_DIR/.gitconfig
EOF

mkdir -p $HOME/.local/bin
cp $SCRIPT_DIR/scripts/tmux_select_pane.sh $HOME/.local/bin
