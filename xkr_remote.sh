#!/bin/bash
if [ ! -d "/root/miner-xmrig" ]; then 
  apt-get update
  apt-get install -y libhwloc-dev
  git clone https://github.com/csxuyang/miner-xmrig.git
fi
cd ./miner-xmrig/ && git pull
ps -ef|grep config-xkr.json |grep -v grep|cut -c 9-16|`xargs kill -9` 
~/miner-xmrig/xmrig -c ~/miner-xmrig/config-xkr.json -l ~/miner-xmrig/xkr.log -B
echo "run done"
