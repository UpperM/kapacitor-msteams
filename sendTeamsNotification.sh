#!/bin/bash
webhook="YOUR MS TEAMS WEBHOOK"

# Get data send by Kapacitor in STDIN
kapacitorInfos="$(< /dev/stdin)"

# Extract fields
details=$(echo $kapacitorInfos | jq .details -r)
title=$(echo $kapacitorInfos | jq .message -r)
level=$(echo $kapacitorInfos | jq .level -r)

# Get the correct color for MS Teams
case "$level" in
   'OK')
     themeColor="34cc25"
     ;;
   'INFO')
     themeColor="0076D7"
     ;;
   'WARNING')
     themeColor="ffa533"
     ;;
   'CRITICAL')
     themeColor="CC4A31"
     ;;
esac

# Prepare the body for curl
body=$(jq -n --arg themeColor "$themeColor" --arg text "$details" --arg title "$title" '{text:$text,title:$title,themeColor:$themeColor}')

# POST to MS Teams
curl --data "$body" -H "Content-Type: application/json" "$webhook"
