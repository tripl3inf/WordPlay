#!/bin/sh

# TMUX auto-start
if which tmux >/dev/null 2>&1; then
  ###if not inside a tmux session, and if no session is started, start a new session
  test -z "$TMUX" && ( tmux attach || mux start debug )
fi
