#!/bin/sh
set -eu

export DEBIAN_FRONTEND=noninteractive

sudo -n apt-get update
sudo -n apt-get install -y curl gpg ca-certificates

sudo -n mkdir -p /etc/apt/keyrings

curl -fsSL https://pkgs.zabbly.com/key.asc |
  sudo -n gpg --batch --yes --dearmor \
    -o /etc/apt/keyrings/zabbly.gpg

sudo -n apt-get update
sudo -n apt-get install -y incus
