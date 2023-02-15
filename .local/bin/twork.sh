#!/bin/bash

if [[ $(tmux ls | grep -o "Work") == "Work" ]];
then
  kitty zsh -c "tmux attach-session -t \"Work\" ";
else 
  kitty zsh -c "tmux new -s \"Work\" ";
fi
