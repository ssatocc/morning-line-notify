#!/bin/bash

MSG="Good morning!"
IMAGE_DIR="./images/"
MAX_NUM=`ls $IMAGE_DIR | wc -l`
RANDOM_NUM=$((RANDOM % MAX_NUM + 1))
IMAGE_FILE="${IMAGE_DIR}${RANDOM_NUM}.png"

curl -X POST -H "Authorization: Bearer $1" \
    -F "message=$MSG" \
    -F "imageFile=@$IMAGE_FILE" \
    "https://notify-api.line.me/api/notify"
