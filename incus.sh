#!/bin/sh

sudo apt update
sudo apt install -y curl gpg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://pkgs.zabbly.com/key.asc | sudo gpg -- dearmor -o /etc/apt/keyrings/zabbly.gpg
sudo apt update
sudo apt install -y incus
