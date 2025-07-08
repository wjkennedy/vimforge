#!/bin/bash

SESSION="rovodev-dev"
APP_DIR="$HOME/projects/your-rovodev-app"  # <-- UPDATE this path
STATIC_DIR="$APP_DIR/static/hello-world"   # <-- UPDATE if needed

tmux new-session -d -s $SESSION -c $APP_DIR

tmux send-keys -t $SESSION 'vim' C-m

tmux split-window -h -t $SESSION:0 -c $APP_DIR
tmux send-keys -t $SESSION 'acli rovodev tunnel' C-m

tmux split-window -v -t $SESSION:0.0 -c "$STATIC_DIR"
tmux send-keys -t $SESSION 'npm run build' C-m

tmux select-pane -t $SESSION:0.0

tmux attach-session -t $SESSION
