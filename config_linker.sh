#!/bin/sh
persist_config_path = /zfswatcher_config/zfswatcher.conf
temp_config_path = /etc/zfs/zfswatcher.conf

if [ -s $persist_config_path ]; then
  rm $temp_config_path
  ln -s $persist_config_path /etc/zfs/
elif [ -e $persist_config_path -a ! -s $persist_config_path]; then
  mv $temp_config_path $persist_config_path
  ln -s $persist_config_path /etc/zfs
fi
