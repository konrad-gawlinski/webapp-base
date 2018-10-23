#!/usr/bin/env bash
set -euxo pipefail

sudo apt-get update
sudo apt-get -y install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
     unzip