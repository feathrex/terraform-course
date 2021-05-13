#!/bin/bash
apt-get update
apt-get install -y nginx docker.io vim lvm2
usermod -a -G docker ubuntu
