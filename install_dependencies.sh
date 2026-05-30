#!/bin/bash
set -e

yum update -y || true
yum install -y docker || true
systemctl start docker
systemctl enable docker

if ! id ec2-user >/dev/null 2>&1; then
  useradd ec2-user
fi

usermod -aG docker ec2-user || true
