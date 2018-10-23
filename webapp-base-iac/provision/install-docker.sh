#!/usr/bin/env bash
set -euxo pipefail

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo groupadd docker
sudo usermod -aG docker vagrant
sudo apt-get update
sudo apt-get -y install docker-ce
sudo -s exec su -l vagrant

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo cp /tmp/conf/docker/override.conf /etc/systemd/system/docker.service.d/
sudo systemctl daemon-reload
sudo systemctl restart docker

docker network create -d bridge webapp-network
