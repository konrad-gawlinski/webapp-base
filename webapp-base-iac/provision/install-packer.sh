#!/usr/bin/env bash
set -euxo pipefail

VERSION="1.2.5"
FILE_NAME="packer_${VERSION}_linux_amd64.zip"
curl "https://releases.hashicorp.com/packer/${VERSION}/${FILE_NAME}" --output "/tmp/${FILE_NAME}"
sudo mkdir -p /usr/local/packer
sudo unzip "/tmp/${FILE_NAME}" -d /usr/local/packer
sudo ln -s /usr/local/packer/packer /usr/bin/packer
rm -rf "/tmp/${FILE_NAME}"
