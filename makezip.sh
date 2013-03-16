#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: `basename $0` {dir of robot code}"
	exit 65;
fi

shopt -s dotglob

mkdir /tmp/robot/

cd ~/.sr/pyenv
git pull
cd -

cp -R ~/.sr/pyenv/pyenv/* /tmp/robot/

mkdir /tmp/robot/user

cp -r $1/* /tmp/robot/user/

cd /tmp/robot/
touch .pyenv-rev
touch user/.user-rev
zip -r /tmp/robot.zip ./*
rm -rf /tmp/robot/

cp /tmp/robot.zip /Volumes/KINGSTON/
rm /tmp/robot.zip

diskutil eject /Volumes/KINGSTON