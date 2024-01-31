#!/bin/bash

MSG="Good morning!"
IMAGE_DIR="./images/"
MAX_NUM=`ls $IMAGE_DIR | wc -l`
RANDOM_NUM=$((RANDOM % MAX_NUM + 1))
IMAGE_FILE="${IMAGE_DIR}${RANDOM_NUM}.png"
ENDPOINT="https://notify-api.line.me/api/notify"

curl -X POST -H "Authorization: Bearer $1" \
    -F "message=$MSG" \
    -F "imageFile=@$IMAGE_FILE" \
    $ENDPOINT
