#!/bin/bash
PROJECT_NAME="$(cat .env | grep PROJECT_NAME | cut -d'=' -f2)"
sed -ie "s/\/var\/www\/html\/.*\/public/\/var\/www\/html\/$PROJECT_NAME\/public/g" ./docker/nginx/default.conf