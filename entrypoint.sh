#!/bin/bash

cd /home/container

echo "========================================"
echo " Accessify Playwright 1.63.0"
echo " Pterodactyl Docker Image"
echo "========================================"

echo "Node: $(node -v)"
echo "NPM:  $(npm -v)"
echo "Startup: ${STARTUP}"

exec /bin/bash -c "${STARTUP}"
