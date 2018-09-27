#! /bin/sh

cd /notebooks
export HOME=/tmp
export TERM=xterm
mkdir /tmp/log
/bin/gotty --port 8000 --permit-write --reconnect /bin/bash &
tensorboard --port 8888 --logdir /tmp/log &
jupyter notebook --notebook-dir /notebooks --config /config.json --allow-root 
