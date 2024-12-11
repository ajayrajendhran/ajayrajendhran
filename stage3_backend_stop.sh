#!/bin/bash
set -e

CID=`sudo docker ps | grep "stage1-backend:latest" | awk '{ print $1 }'`
if [[ "" !=  "$CID" ]]; then
  echo "killing $CID"
  sudo docker stop $CID
fi