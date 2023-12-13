#!/bin/bash

set -e

apt update

export DEBIAN_FRONTEND=noninteractive

apt install multistrap -y

multistrap -f beige.multistrap || true

multistrap -f beige.multistrap

cp sources.list /beige-rootfs/etc/apt/sources.list
