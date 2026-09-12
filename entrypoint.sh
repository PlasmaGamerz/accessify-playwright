#!/bin/bash

cd /home/container

echo "========================================"
echo " Accessify Playwright 1.63.0"
echo " Pterodactyl Docker Image"
echo "========================================"

echo "Node: $(node -v)"
echo "NPM:  $(npm -v)"

MODIFIED_STARTUP=$(eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g'))

echo ":/home/container$ ${MODIFIED_STARTUP}"

exec ${MODIFIED_STARTUP}
