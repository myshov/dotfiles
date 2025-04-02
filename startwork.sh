tmuxSessionWork="work"
projectDirectory="cd projects/iconik_web"
tmux start-server
tmux new-session -d -s $tmuxSessionWork -n vim
tmux send-keys "$projectDirectory" C-m
tmux send-keys "clear" C-m
tmux split-window -h
tmux send-keys "$projectDirectory" C-m
tmux send-keys "clear" C-m
tmux select-pane -t 0
tmux new-window -t $tmuxSessionWork:2 -n misc
tmux send-keys "$projectDirectory" C-m
tmux send-keys "clear" C-m
tmux new-window -t $tmuxSessionWork:3 -n bash
tmux select-window -t $tmuxSessionWork:1
tmux attach-session -t $tmuxSessionWork
