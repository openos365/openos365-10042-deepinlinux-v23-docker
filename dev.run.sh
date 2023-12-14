#!/usr/bin/env bash

set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

export GITHUB_REPOSITORY=openos365-10042-deepinlinux-v23-docker
export GITHUB_REF_NAME=deepinv23
export GITHUB_RUN_NUMBER=1







 cd $CMD_PATH
    for ci_dir in `ls -d -1 ci/1* | sort`
    do
        echo $ci_dir
        if [ -f $ci_dir/1.ci.run.sh ];then
            ./${ci_dir}/1.ci.run.sh
        fi
    done