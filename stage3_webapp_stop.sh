#!/bin/bash
set -e

CID=$(sudo docker ps | grep "2000" | awk '{ print $1 }')
if [[ "" !=  "$CID" ]]; then
  echo "killing $CID"
  sudo docker stop "$CID"
  sudo docker rm "$CID"
fi

# kdlkmlkcmsdlkmcklm