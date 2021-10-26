#!/bin/bash

local_ip=`ipconfig getifaddr en0`
external_ip=`curl -s ifconfig.co`

echo "Local ip: $local_ip\nExternal ip: $external_ip"
