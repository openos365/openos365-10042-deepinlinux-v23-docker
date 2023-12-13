#!/usr/bin/env bash
set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
export TERM=xterm-256color
echo $PROJECT_NAME
cd $CMD_PATH
env

whoami
pwd

apt update -y

apt install git -y 
apt install rsync -y

apt install build-essential -y

apt install qt5-default -y
apt install qt5-qmake -y

apt install -y qtmultimedia5-dev 
apt install -y libqt5multimediawidgets5 
apt install -y libqt5multimedia5-plugins 
apt install -y libqt5multimedia5
apt install -y libqt5serialport5-dev
apt install -y libpoppler-qt5-dev

apt install -y linglong-bin 
apt install -y linglong-builder 


cd ~/

git clone https://github.com/linuxdeepin365/Rufus.git

cd Rufus

qmake

make

