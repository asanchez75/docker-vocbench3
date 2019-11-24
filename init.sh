#!/bin/bash
if [ ! -f ./.loaded ]; then
    cp -r /tmp/semanticturkey-6.0/. /data
   touch ./.loaded
fi
# execute server
#chmod u+x /data/bin/karaf
#bash -c "/data/bin/karaf 2>/dev/null" 
tmux new -d -s vb3 '/data/bin/karaf'
sleep infinity


