#!/bin/bash

local_ip=`ipconfig getifaddr en0`
external_ip=`curl -s ifconfig.co`

echo "Local ipv4: $local_ip\nExternal ipv4: $external_ip"
