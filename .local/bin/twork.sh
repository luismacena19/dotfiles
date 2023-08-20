#!/bin/bash

if [[ $(tmux ls | grep -o "Work") == "Work" ]];
then
  xterm -T "Working..🐈" -e "tmux attach-session -t \"Work\"";
else 
  xterm -T "Working..🐈" -e "tmux new -s \"Work\"";
fi

