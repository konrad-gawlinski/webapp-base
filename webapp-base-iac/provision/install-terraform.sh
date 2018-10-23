#!/usr/bin/env bash
set -euxo pipefail

VERSION="0.11.7"
FILE_NAME="terraform_{$VERSION}_linux_amd64.zip"
curl "https://releases.hashicorp.com/terraform/${VERSION}/${FILE_NAME}" --output "/tmp/${FILE_NAME}"
sudo mkdir -p /usr/local/terraform
sudo unzip "/tmp/${FILE_NAME}" -d /usr/local/terraform
sudo ln -s /usr/local/terraform/terraform /usr/bin/terraform
rm -rf "/tmp/${FILE_NAME}"

cd /iac/terraform/development/webapp && terraform init
