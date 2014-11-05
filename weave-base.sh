#!/bin/bash

sudo apt-get install -q -y docker.io golang ethtool libpcap-dev git mercurial build-essential
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
sudo usermod -a -G docker vagrant
export GOPATH=/home/vagrant
echo export GOPATH=/home/vagrant >> /home/vagrant/.bashrc
mkdir src pkg bin
go get github.com/zettio/weave
sudo go install -a -tags netgo std
cd $GOPATH/src/github.com/zettio/weave
make
