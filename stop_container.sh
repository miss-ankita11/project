#!/bin/bash
set -e

if docker ps -a --format '{{.Names}}' | grep -q "^my-python-app$"; then
  docker stop my-python-app || true
  docker rm my-python-app || true
fi
