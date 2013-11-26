#!/bin/bash
sudo apt-get update
sudo apt-get install vim tmux git subversion build-essential libfuse-dev libglib2.0-dev libtool automake flex bison libglib2.0-dev --yes
git clone https://github.com/lucciano/glusterfs.git
cd glusterfs
git checkout release-3.4
./autogen.sh -f 
./configure 
make
sudo make install


