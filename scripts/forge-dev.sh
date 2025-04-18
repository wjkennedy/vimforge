#!/bin/bash

SESSION="forge-dev"
APP_DIR="$HOME/projects/your-forge-app"  # <-- UPDATE this path

tmux new-session -d -s $SESSION -c $APP_DIR

tmux send-keys -t $SESSION 'vim' C-m

tmux split-window -h -t $SESSION:0 -c $APP_DIR
tmux send-keys -t $SESSION 'forge tunnel' C-m

tmux split-window -v -t $SESSION:0.0 -c "$APP_DIR/static/hello-world"
tmux send-keys -t $SESSION 'npm run build' C-m

tmux select-pane -t $SESSION:0.0

tmux attach-session -t $SESSION