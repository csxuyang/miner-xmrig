#!/bin/bash
if [ ! -d "/root/miner-xmrig" ]; then 
  apt-get update
  apt-get install -y libhwloc-dev
  git clone https://github.com/csxuyang/miner-xmrig.git
fi
cd /root/miner-xmrig/ && git pull
ps -ef|grep config-xkr.json |grep -v grep|cut -c 9-16|`xargs kill -9` 
/root/miner-xmrig/xmrig -c /root/miner-xmrig/config-xkr.json -l /root/miner-xmrig/xkr.log -B
echo "run done"
