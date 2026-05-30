#!/bin/bash
set -e

cd /home/ec2-user/myapp
docker load -i my-python-app.tar
docker run -d --name my-python-app -p 80:80 my-python-app:latest || \
docker run -d --name my-python-app -p 80:80 $(docker images --format "{{.Repository}}:{{.Tag}}" | head -n 1)
