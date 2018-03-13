#!/bin/bash
if [ ! -f ./.data_loaded ]; then
    cp -r /tmp/semanticturkey-3.0/. /data
   touch ./.data_loaded
fi
# execute server
/data/bin/st_server_run

