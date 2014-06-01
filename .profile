# If tmux is not running, start it
if [[ -z "$TMUX" ]]; then
  tmux attach || tmux new
fi