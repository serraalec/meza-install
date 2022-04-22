#!/bin/bash


ifup enp0s3

yum -y update
yum install -y git

yum install “kernel-devel-uname-r == $(uname -r)”
yum install -y gcc perl kernel-headers kernel-devel
yum install -y git ansible

git clone -b 35.x https://github.com/enterprisemediawiki/meza /opt/meza
bash /opt/meza/src/scripts/getmeza.sh
meza deploy monolith
