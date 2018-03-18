#! /bin/sh
cd /notebooks
export HOME=/tmp
export TERM=xterm
jupyter notebook --notebook-dir /notebooks --config /config.json --allow-root &
gotty --port 8000 --permit-write --reconnect /bin/bash