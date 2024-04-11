#!/bin/bash

mine() {
  local keyfile="$1"  
  stillRunning=$(ps -ef |grep "$keyfile mine" |grep -v "grep")
  if [ "$stillRunning" ] ; then
	echo "ORE ${keyfile} service was already started by another way"
  else
	echo "Starting service ${keyfile} ..."
	nohup ore \
			--rpc  $rpc_addr\
			--priority-fee 5000 \
			--keypair $keyfile mine \
			--threads 4 \
			> ore${2}.log  2>&1 &

  fi

}

source ore.env
while true; do
 
  for i in {0..4}; do
    mine "/root/.config/solana/id${i}.json" "${i}"
  done
  
  sleep 120
done
