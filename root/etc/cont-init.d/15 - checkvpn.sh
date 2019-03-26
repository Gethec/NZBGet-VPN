#!/usr/bin/with-contenv bash

if [ ! -e "/config/$OVPNCONF" ]; then
    echo "Could not find requested VPN file: $OVPNCONF"
    exit 1
fi