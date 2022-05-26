#!/usr/bin/env sh

NAME_FILE=$(date +%d-%m-%Y)
THREE_WEEKS=$(date --date="-14 day" +%d-%m-%Y)
echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] Starting backup.."
(
  echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] Starting backup.."
  echo "[$(date +"%d-%m-%Y %H:%M:%S")] Looking for backups older than three weeks... "
  if [[ -f "$HOME/.local/etc/files/backup/$HOSTNAME/weekly/$THREE_WEEKS.tar.gz" ]]; then
    echo "[$(date +"%d-%m-%Y %H:%M:%S")] Found $THREE_WEEKS! Deleting backup... "
    rm $HOME/.local/etc/files/backup/$HOSTNAME/weekly/$THREE_WEEKS.tar.gz 
    echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] $THREE_WEEKS deleted."
  else 
      echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] No backups older than three weeks found."
  fi
) &>> $HOME/tmp/logs/backup_logs.log

(
  if [[ -f "$HOME/.local/etc/files/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz" ]]; then
    echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] Backup $NAME_FILE already exist! Deleting $NAME_FILE ..." 
    rm $HOME/.local/etc/files/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz
    echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] Backup deleted, creating a new backup ..."
    tar -czf $HOME/.local/etc/files/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz \
      -P $HOME/.config/google-chrome \
      $HOME/Desktop/Work \
      $HOME/tmp/logs \
      $HOME/.local/etc/files \
      $HOME/.xinitrc \
      $HOME/.zshrc \
      $HOME/.zsh_history \
      $HOME/.zprofile \
      $HOME/.ssh \
      $HOME/.config/sublime-text \
      $HOME/tmp/logs
  else
    tar -czf $HOME/.local/etc/files/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz \
      -P $HOME/.config/google-chrome \
      $HOME/Desktop/Work \
      $HOME/tmp/logs \
      $HOME/.local/etc/files \
      $HOME/.xinitrc \
      $HOME/.zshrc \
      $HOME/.zsh_history \
      $HOME/.zprofile \
      $HOME/.ssh \
      $HOME/.config/sublime-text \
      $HOME/tmp/logs
  fi
  echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] Backup done! File $NAME_FILE.tar.gz has $(du -h $HOME/.local/etc/files/backup/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz). Bye, bye!"
  rsync -avzP $HOME/.local/etc/files/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz user_from_server@192.168.1.1:/backup/$HOSTNAME/weekly/
  echo -e "Done sending file to server..  Bye, bye!"
) &>> $HOME/tmp/logs/backup_logs.log
echo -e "[$(date +"%d-%m-%Y %H:%M:%S")] Backup done! File $NAME_FILE.tar.gz has $(du -h $HOME/.local/etc/files/backup/$HOSTNAME/weekly/$NAME_FILE.tar.gz). Done sending file to server..  Bye, bye!"