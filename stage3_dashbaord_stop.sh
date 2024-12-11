#!/bin/bash
set -e

CID=$(sudo docker ps | grep "3000" | awk '{ print $1 }')
if [[ "" !=  "$CID" ]]; then
  echo "killing $CID"
  sudo docker stop "$CID"
fi