#!/bin/bash
# Stop all containers
docker stop $(docker ps -a -q)
# Delete all containers
docker rm --force $(docker ps -a -q)
# Delete all images
docker rmi --force $(docker images -q)
# Remove unused volumes
docker volume prune --force

