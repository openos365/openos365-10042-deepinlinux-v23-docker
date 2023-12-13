#!/bin/bash

set -e

apt update

export DEBIAN_FRONTEND=noninteractive

apt install multistrap -y

apt-key adv --keyserver keyserver.deepin.com --recv-keys 425956BB3E31DF51

multistrap -f beige.multistrap

cp sources.list /beige-rootfs/etc/apt/sources.list
