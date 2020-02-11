#!/bin/bash

tmux -2 new-session -d -s ToDoList
tmux split-window -v
tmux select-pane -t 0
tmux split-pane -v
tmux select-layout even-horizontal

tmux select-pane -t 0
tmux send-keys "cd ./frontend && yarn dev" C-m

tmux select-pane -t 1
tmux send-keys "cd ./frontend && npm run cy:open" C-m

tmux select-pane -t 2
tmux send-keys "cd ./backend && ./gradlew bootRun" C-m

tmux a -t ToDoList
