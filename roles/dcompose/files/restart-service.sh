#!/bin/bash

cd /home/rockyj/app
cat ./.dockercreds | docker login registry.gitlab.com --username rocky-jaiswal --password-stdin

SERVICE_NAME=$1
IMAGE_PATH=$2

IMAGE_NAME+="${SERVICE_NAME^^}_SHA"
OLD_IMAGE_VERSION=$(grep "$IMAGE_NAME" /home/rockyj/app/.env | awk -F "=" '{print $2}')
NEW_IMAGE_VERSION=$(echo $IMAGE_PATH | awk -F ":" '{print $2}')

# echo $SERVICE_NAME
# echo $NEW_IMAGE_VERSION

docker pull $IMAGE_PATH && \
sed -i "s/$OLD_IMAGE_VERSION/$NEW_IMAGE_VERSION/g" /home/rockyj/app/.env && \
docker-compose stop $SERVICE_NAME && \
docker-compose up --no-deps --detach $SERVICE_NAME
