#!/bin/bash

mine() {
  local keyfile="$1"
  stillRunning=$(ps -ef |grep "$keyfile mine" |grep -v "grep")
  if [ "$stillRunning" ] ; then
        echo "ORE ${keyfile} service was already started by another way"
  else
        echo "Starting service ${keyfile} ..."
						
	nohup /root/ore-cli-gpu/target/release/ore --rpc $rpc_addr --keypair $keyfile mine --priority-fee 50000 --threads 1 > ore${2}.log  2>&1 &
  fi

}

source ore.env
while true; do

  for i in {0..19}; do
    mine "/root/id/id${i}.json" "${i}"
  done

  sleep 120
done
