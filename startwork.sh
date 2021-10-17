tmuxSessionWork="work"
tmux start-server
tmux new-session -d -s $tmuxSessionWork -n vim
tmux new-window -t $tmuxSessionWork:2 -n ssh
tmux selectp -t 1
tmux send-keys "cd development" C-m
tmux splitw -h -p 50
tmux new-window -t $tmuxSessionWork:3 -n bash
tmux select-window -t $tmuxSessionWork:1
tmux attach-session -t $tmuxSessionWork
