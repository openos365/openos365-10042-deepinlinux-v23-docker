#!/usr/bin/env bash

set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

cd ubuntu2204
sudo apt install ./*.deb

cd $CMD_PATH
cd org.deepin.demo
ll-builder build


docker pull ${GITHUB_REPOSITORY}-$GITHUB_REF_NAME-${MY_USER}:$GITHUB_RUN_NUMBER

CONT_ID=$(docker run -d ${GITHUB_REPOSITORY}-$GITHUB_REF_NAME-${MY_USER}:$GITHUB_RUN_NUMBER)

docker export ${CONT_ID} -o runtime.tar.gz




cd $CMD_PATH
cd org.deepin.rufus
ll-builder build
