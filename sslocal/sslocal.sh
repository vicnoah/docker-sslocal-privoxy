#!/bin/sh


SS_SERVER=${SS_SERVER}
SS_SERVER_PORT=${SS_SERVER_PORT}
SS_SERVER_PASSWD=${SS_SERVER_PASSWD}
ENCRYPT_METHOD=${ENCRYPT_METHOD}
SS_LOCAL_PORT=${SS_LOCAL_PORT}

sslocal -s $SS_SERVER -p $SS_SERVER_PORT -k $SS_SERVER_PASSWD -m $ENCRYPT_METHOD -b 0.0.0.0 -l $SS_LOCAL_PORT
